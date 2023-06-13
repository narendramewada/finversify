import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
import 'otp_verification.dart';
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {

  TextEditingController namwCntroller = TextEditingController();
  TextEditingController emailCntroller = TextEditingController();
  TextEditingController phonrCntroller = TextEditingController();
  TextEditingController passwordCntroller = TextEditingController();
  TextEditingController confirmPasswordCntroller = TextEditingController();

  Future<void> registrationPostRequest() async {
    final url = Uri.parse('http://192.168.1.45/finversify/register');
    final headers = { /*"Content-type": "application/json"*/
    };
    final map = Map();

    map['name'] = namwCntroller.text;
    map['email'] = emailCntroller.text;
    map['phone'] = phonrCntroller.text;
    map['password'] = passwordCntroller.text;
    map['c_password'] = confirmPasswordCntroller.text;
    map['device_token'] = "1";
    map['device_type'] = 'Android';


    final response = await post(url, body: map);
    if (response.statusCode == 200) {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
// Save an String value to 'action' key.
      await prefs.setString('ph', phonrCntroller.text);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const otp_verification()));
    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                //color: Colors.cyan,
                height: 40, width: 310,
                margin: EdgeInsets.only(top: 100, left: 10.91),
                child: Text("Sign up", style: GoogleFonts.inter(fontSize: 30,
                    fontWeight: FontWeight.w700,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),

              Container(
                //color: Colors.cyan,
                height: 50, width: 310,
                margin: EdgeInsets.only(left: 10.91),
                child: Text("Lorem ipsum dolor sit amet consectetur",
                    style: GoogleFonts.inter(fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.2125,
                        color: Color(0xff7e8696))),
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text("Name", style: GoogleFonts.inter(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  //color: Color(0xffb8bbc0),

                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: namwCntroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))),
                      hintText: 'Enter your name ',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          height: 1.2125, color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text("Email id", style: GoogleFonts.inter(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: emailCntroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))),
                      hintText: 'Enter your email ',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          height: 1.2125, color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text(
                    "Phone number", style: GoogleFonts.inter(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: phonrCntroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))),
                      hintText: 'Enter your phone no. ',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          height: 1.2125, color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text("Password", style: GoogleFonts.inter(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: passwordCntroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))),
                      hintText: '* * * * * * * *  ',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          height: 1.2125, color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text(
                    "Confirm password", style: GoogleFonts.inter(fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2125,
                    color: Color(0xff000000))),
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: confirmPasswordCntroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))),
                      hintText: '* * * * * * * * ',
                      hintStyle: GoogleFonts.inter(
                          fontSize: 14, fontWeight: FontWeight.w400,
                          height: 1.2125, color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff9700)
                  ),
                  margin: EdgeInsets.only(left: 21),
                  child: Center(
                    child: Text('Register', style: GoogleFonts.inter(
                        fontSize: 16, fontWeight: FontWeight.w600,
                        height: 1.2125, color: Color(0xffffffff))),
                  ),
                ),
                onTap: () {
                  if (namwCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter name",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else if (emailCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter email",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else if (phonrCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter phone",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else if (passwordCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else if (confirmPasswordCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter confirm password",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else {
                    registrationPostRequest();
                  }
                },
              ),
              SizedBox(height: 40,),
              RichText(textAlign: TextAlign.right,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Already have an account?",
                            style: GoogleFonts.inter(
                                fontSize: 14, fontWeight: FontWeight.w400,
                                height: 1.2125, color: Color(0xff7e8696))

                        ),
                        TextSpan(
                            text: ' Login',
                            style: GoogleFonts.inter(
                                fontSize: 16, fontWeight: FontWeight.w600,
                                height: 1.2125, color: Color(0xffff9700)),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const login()));
                              }

                        )
                      ]

                  ))

            ],
          ),
        ),
      ),

    );
  }
}
