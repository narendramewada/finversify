import 'dart:convert';

import 'package:finversify/botton_nv.dart';
import 'package:finversify/forgot_password.dart';
import 'package:finversify/home.dart';
import 'package:finversify/sign-up.dart';
import 'package:finversify/splash.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isLoading = false;



  TextEditingController phonrCntroller = TextEditingController();
  TextEditingController passwordCntroller = TextEditingController();
  var userId="";
  var userName="";


  Future<void> loginPostRequest() async {
    final url = Uri.parse('http://192.168.1.57/finversify/login');
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();


    map['username'] = phonrCntroller.text;
    map['password'] = passwordCntroller.text;
    map['device_token'] = "1";
    map['device_type'] = 'Android';


    final response = await post(url, body: map);


    if(response.statusCode == 200){
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      var status = jsonDecode(response.body)["status"];

      if(status){
        userId = jsonDecode(response.body)["user"]["id"].toString();
        //userId = jsonDecode(response.body)["user"]["name"].toString();
        await prefs.setString("id", userId);
        await prefs.setBool("KEYLOGIN", true);
        Navigator.pop(context);
        Navigator.push(context,MaterialPageRoute(builder: (context)=> const bottom_nv()));


      } else{
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
                child: Text("Let's Sign In",
                    style: GoogleFonts.inter(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        height: 1.2125,
                        color: Color(0xff000000))),
              ),
              Container(
                //color: Colors.cyan,
                height: 50, width: 310,
                margin: EdgeInsets.only(left: 10.91),
                child: Text("Welcome back, you have been missed!",
                    style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.2125,
                        color: Color(0xff7e8696))),
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Text("Email/Phone",
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
                ),
                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  controller: phonrCntroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: 'Enter your email/phone no. ',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                      height: 1.2125,color: Color(0xffb8bbc0))),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                // color: Colors.green,
                height: 25, width: 310,
                margin: EdgeInsets.only(left: 16),
                child: Row(
                  children: [
                    Text("Password",
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.2125,
                            color: Color(0xff000000))),
                    SizedBox(
                      width: 120,
                    ),
                    InkWell(
                      child: Text(
                        'Forgot password?',
                        textAlign: TextAlign.right,
                        style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 1.2125,
                            color: Color(0xffff9700)),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const forgot_password()));
                      },
                    )
                  ],
                ),
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
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      hintText: '* * * * * * * * *',hintStyle: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                      height: 1.2125,color: Color(0xffb8bbc0))
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),

              InkWell(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff9700)),
                  margin: EdgeInsets.only(left: 21),
                  child: Center(
                    child:!_isLoading? Text('Login',
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            height: 1.2125,
                            color: Color(0xffffffff))): const CircularProgressIndicator(color: Colors.white,),
                  ),

                ),
                onTap: () async {
                  /*var sharedPref =await SharedPreferences.getInstance();
                  sharedPref.setBool(splashState.KEYLOGIN, true);*/

                  if (phonrCntroller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter email/phone",
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
                  } else loginPostRequest();
                  setState(() {
                    _isLoading = true;
                  });
                  await Future.delayed(const Duration(seconds: 2));
                  setState(() {
                    _isLoading = false;
                  });


                  },
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                //color: Colors.yellow,
                height: 20, width: 25,
                child: Text('Or',
                    style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        height: 1.2125,
                        color: Color(0xff7e8696))),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Container(
                  height: 50,
                  width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xfff8f8f9),
                      border: Border.all(color: Color(0xffe9eef6))),
                  margin: EdgeInsets.only(left: 21),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 90),
                          height: 15,
                          width: 15,
                          child: Image.asset('assets/google1.png'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('Sign with Google',
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                height: 1.2125,
                                color: Color(0xff000000))),
                      ],
                    ),
                  ),
                ),
                onTap: (){

                },
              ),
              SizedBox(
                height: 180,
              ),
              RichText(
                  textAlign: TextAlign.right,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "Don't have an account?",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            height: 1.2125,
                            color: Color(0xff7e8696))),
                    TextSpan(
                      text: ' Sign up',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.2125,
                          color: Color(0xffff9700)),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> const signup()));
                      },
                    )
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
