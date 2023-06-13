import 'dart:convert';
import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:finversify/api_address.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File imageFile = File("");
  var name="";
  var email="";
  var phone="";
  var userId="";

  @override
  void initState(){
    super.initState();
    get('http://192.168.1.57/finversify/getProfile?user_id=userId');

  }

  Future<dynamic> get(String url ) {
    return http
        .get(Uri.parse(url))
        .then((http.Response response) {
      String res = response.body;
      int statusCode = response.statusCode;
      print("API Response: " + res);
      if (statusCode < 200 || statusCode > 400 || json == null) {
        res = "{\"status\":"+
            statusCode.toString() +
            ",\"message\":\"error\",\"response\":" +
            res +
            "}";
        throw new Exception( statusCode);
      }else{

      }
      setState(() {
        name =( json.decode(response.body) ["data"]["name"]);
        email =( json.decode(response.body) ["data"]["email"]);
        phone =( json.decode(response.body) ["data"]["phone"]);
        userId =( json.decode(response.body) ["data"]["user_id"]);
      });
      print(res);
      return ;
    });
  }
  addStringToSF() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userId =  prefs.getString("id")!;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left: 15,right: 15),
          child: Container(
            //color: Colors.pinkAccent,
            child: Column(
              children: [
                Container(
                  //color: Colors.pinkAccent,
                  height: 35,width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(

                          height: 22,width: 24,
                          child: Icon(Icons.arrow_back_outlined),
                          alignment: Alignment.centerLeft,

                        ),
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 10,),
                      Container(
                        //color: Colors.blueGrey,
                        height: 30,width: 180,
                        margin: EdgeInsets.only(top: 5),
                        child: Text('Profile',style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,
                            height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                        alignment: Alignment.centerLeft,
                      ),
                      SizedBox(width: 66,),
                      Container(
                        //color: Colors.green,
                        height: 16,width: 50,
                        child: Text('Edit',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125, color: Color(0xff7e8696)),)
                      ),
                    ],
                  ),
                ),
                InkWell(
                  child:imageFile.path.isEmpty?
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/profile.png'),
                            fit: BoxFit.cover,
                            alignment: Alignment.center
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    height: 80,width: 80,
                  ) : Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: FileImage(imageFile),
                            fit: BoxFit.cover,
                            alignment: Alignment.center
                        ),
                        borderRadius: BorderRadius.circular(100)
                    ),
                    height: 80,width: 80,

                  ),
                  onTap: (){
                    showModalBottomSheet<void>(
                      context: context,
                      shape : RoundedRectangleBorder(
                        borderRadius : BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),),
                      builder: (BuildContext context) {
                        return Container(

                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)

                          ),
                          child: Column(
                            children: [
                              InkWell(
                                child: Container(
                                  //color: Colors.pinkAccent,
                                  margin: EdgeInsets.only(left: 290,top: 10),
                                  height: 20,width: 20,
                                  child: Icon(Icons.close,color: Colors.black,size: 25,weight: 50),

                                ),
                                onTap: (){Navigator.pop(context);},
                              ),

                              Container(
                                //color: Colors.orangeAccent,
                                height: 25,width: 150,
                                child: Text('Upload photo',style: GoogleFonts.inter(fontSize: 18,
                                fontWeight: FontWeight.w600,height: 1.2125,color: Color(0xff000000))),
                                alignment: Alignment.center,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        color: Color(0xffff9700),
                                        strokeWidth: 1,
                                        radius: Radius.circular(17),


                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 20,right: 20),
                                              child: Container(

                                                height: 60,width: 60,
                                                decoration: BoxDecoration(

                                                  borderRadius: BorderRadius.circular(100),
                                                    color: Color(0x0cff9700)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(14.0),
                                                  child: SizedBox(

                                                    child: Image.asset('assets/camera.png'),
                                                  ),
                                                ),

                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Take a picture',style: GoogleFonts.inter(fontSize: 12,
                                              fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff000000))),
                                            )
                                          ],
                                        ),


                                      ),
                                      onTap: (){_getFromCamera();},
                                    ),
                                  ),
                                 SizedBox(width: 30,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                      child: DottedBorder(
                                        borderType: BorderType.RRect,
                                        color: Color(0xffff9700),
                                        radius: Radius.circular(17),
                                        strokeWidth: 1,



                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 20,right: 20),
                                              child: Container(

                                                height: 60,width: 60,
                                                decoration: BoxDecoration(

                                                    borderRadius: BorderRadius.circular(100),
                                                    color: Color(0x0cff9700)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(14.0),
                                                  child: SizedBox(

                                                    child: Image.asset('assets/gallery.png'),
                                                  ),
                                                ),

                                              ),
                                            ),

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text('Gallery',style: GoogleFonts.inter(fontSize: 12,
                                                  fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff000000))),
                                            )
                                          ],
                                        ),


                                      ),
                                      onTap: (){_getFromGallery();},
                                    ),
                                  ),

                                ],
                              )


                            ],
                          ),
                        );

                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.pink,
                    height: 20,
                    child: Text(name,style: GoogleFonts.inter(fontSize: 16,
                        fontWeight: FontWeight.w600,height: 1.2125,color: Color(0xff000000))),
                    alignment: Alignment.center,
                  ),
                ),
            SizedBox(height: 30,),
            Container(
              // color: Colors.green,
              height: 25, width: 310,
              margin: EdgeInsets.only(left: 16),
              child: Text("Name",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.2125,
                      color: Color(0xff000000))),
            ),
            Container(
              height: 50,
              width: 320,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xfff7f7f8),
                border: Border.all(color: Color(0xffe9edf6))
              ),
              //margin: EdgeInsets.only(left: 21),
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 18),
                child: Text(name,style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                height: 1.2125,color: Color(0xff000000)),textAlign: TextAlign.left,
                ),
              ),
            ),
                SizedBox(height: 25,),
                Container(
                  // color: Colors.green,
                  height: 25, width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Email id",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2125,
                          color: Color(0xff000000))),
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff7f7f8),
                      border: Border.all(color: Color(0xffe9edf6))
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 18),
                    child: Text(email,style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xff000000)),textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Container(
                  // color: Colors.green,
                  height: 25, width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Phone Number",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.2125,
                          color: Color(0xff000000))),
                ),
                Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff7f7f8),
                      border: Border.all(color: Color(0xffe9edf6))
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15,left: 18),
                    child: Text(phone,style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xff000000)),textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                 Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff9700)),
                  //margin: EdgeInsets.only(left: 21),
                  child: Center(
                    child: Text('Update',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.2125,
                            color: Color(0xffffffff))),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        Navigator.pop(context);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
        Navigator.pop(context);
      });
    }
  }
}
