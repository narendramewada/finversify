import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
class password extends StatefulWidget {
  const password({Key? key}) : super(key: key);

  @override
  State<password> createState() => _passwordState();
}

class _passwordState extends State<password> {


  var userId ="";

  TextEditingController old_passwordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController c_passwordController = TextEditingController();



  Future<void> changePasswordPostRequest() async {
    final url = Uri.parse('http://192.168.1.38/finversify/changePassword');
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();

    map['old_password'] = old_passwordController.text;
    map['password'] = passwordController.text;
    map['c_password'] = c_passwordController.text;
    map['user_id'] = userId;

    final response = await post(url, body: map);
    if(response.statusCode == 200){

      var status = jsonDecode(response.body) ["status"] ;

      if(status) {
        Fluttertoast.showToast(
            msg: "Password successfully updated",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
        //Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
      }else{
        Fluttertoast.showToast(
            msg: jsonDecode(response.body) ["message"],
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }
  @override
  initState()  {
    // TODO: implement initState
    super.initState();
    addStringToSF();
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
                        child: Text('Change Password',style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,
                            height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                        alignment: Alignment.centerLeft,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.green,
                  height: 25,width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Old Password",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: old_passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: '* * * * * * * * ',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xffb8bbc0))
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.green,
                  height: 25,width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("New Password",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: '* * * * * * * *  ',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xffb8bbc0))
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  // color: Colors.green,
                  height: 25,width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Confirm password",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: c_passwordController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: '* * * * * * * * ',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xffb8bbc0))
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                InkWell(
                  child: Container(
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
                  onTap: (){
                    changePasswordPostRequest();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}































