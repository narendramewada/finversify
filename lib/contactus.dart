import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  Future<void> contact_usPostRequest() async {
    final url = Uri.parse('http://192.168.1.38/finversify/contact_us');
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();

    map['name'] = nameController.text;
    map['email'] = emailController.text;
    map['phone'] = phoneController.text;
    map['message'] = messageController.text;



    final response = await post(url, body: map);
    if(response.statusCode == 200){

      //Navigator.push(context,MaterialPageRoute(builder: (context)=> const otp_verification()));
    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
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
                        child: Text('Contact Us',style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,
                            height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                        alignment: Alignment.centerLeft,
                      ),
                      /*SizedBox(width: 66,),
                      Container(
                        //color: Colors.green,
                          height: 16,width: 50,
                          child: Text('Edit',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125, color: Color(0xff7e8696)),)
                      ),*/

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
                  child: Text("Name",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: 'Enter your name ',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
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
                  child: Text("Email id",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: 'Enter your email',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
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
                  child: Text("Phone number",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: 'Enter your phone number',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                        height: 1.2125,color: Color(0xffb8bbc0))
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  // color: Colors.green,
                  height: 25,width: 310,
                  margin: EdgeInsets.only(left: 16),
                  child: Text("Message",style: GoogleFonts.inter(fontSize: 14,
                      fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
                ),
                Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  //margin: EdgeInsets.only(left: 21),
                  child: TextField(
                    controller: messageController,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                        hintText: 'Type here......',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
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
                      child: Text('Send',
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              height: 1.2125,
                              color: Color(0xffffffff))),
                    ),
                  ),
                  onTap: (){
                    if (nameController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "PLEASE enter name",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    } else if (emailController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "PLEASE enter email",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    } else if (phoneController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "PLEASE enter phone",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    } else if (messageController.text.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "PLEASE your message",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      );
                    } else {
                      contact_usPostRequest();
                    }
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



