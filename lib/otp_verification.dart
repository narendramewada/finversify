
import 'dart:convert';


import 'package:finversify/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
class otp_verification extends StatefulWidget {
  const otp_verification({Key? key}) : super(key: key);

  @override
  State<otp_verification> createState() => _otp_verificationState();
}

class _otp_verificationState extends State<otp_verification> {

  var otp = "";
  var phone="";

  TextEditingController pin1Controller = TextEditingController();
  TextEditingController pin2Controller = TextEditingController();
  TextEditingController pin3Controller = TextEditingController();
  TextEditingController pin4Controller = TextEditingController();
  TextEditingController pin5Controller = TextEditingController();
  TextEditingController pin6Controller = TextEditingController();

  Future<void> verifyOtpPostRequest() async {
    final url = Uri.parse('http://192.168.1.45/finversify/verifyOtp');
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();

    map['otp'] = otp;
    map['username'] = phone;

    final response = await post(url, body: map);
    if(response.statusCode == 200){
      var status = jsonDecode(response.body) ["status"];
      if(status) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const login()));
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
    phone =  prefs.getString("ph")!;
  }

 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                //color: Colors.cyan,
                height: 40,width: 310,
                margin: EdgeInsets.only(top: 100,left: 10.91),
                child: Text("OTP Verification",style: GoogleFonts.inter(fontSize: 30,
                    fontWeight: FontWeight.w700,height: 1.2125,color: Color(0xff000000))),
              ),

              Container(
                //color: Colors.cyan,
                height: 50,width: 310,
                margin: EdgeInsets.only(left: 10.91),
                child: Text("Lorem ipsum dolor sit amet consectetur!",style: GoogleFonts.inter(fontSize: 15,
                    fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff7e8696))),
              ),

          Padding(
            padding: const EdgeInsets.only(left: 18,right: 18),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                   // height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin1Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        //hintText: '0',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,
                     onChanged: (value) {
                       if(value.length == 1){
                         FocusScope.of(context).nextFocus();
                       }
                     },


                    ),
                  ),
                  SizedBox(
                   // height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin2Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          //hintText: '0',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },


                    ),
                  ),
                  SizedBox(
                    //height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin3Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                         // hintText: '0',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },


                    ),
                  ),
                  SizedBox(
                    //height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin4Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          //hintText: '0',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },


                    ),
                  ),
                  SizedBox(
                    //height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin5Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],

                      keyboardType: TextInputType.number,

                      onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },


                    ),
                  ),
                  SizedBox(
                    //height: 50,
                    width: 48,
                    child: TextFormField(
                      controller: pin6Controller,
                      style: GoogleFonts.inter(fontSize: 22,fontWeight: FontWeight.w400,
                      height: 1.2125,color: Color(0xff000000)),
                      textAlign: TextAlign.center,

                      decoration: InputDecoration(

                          //hintText: '0',
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      keyboardType: TextInputType.number,

                      /*onChanged: (value) {
                        if(value.length == 1){
                          FocusScope.of(context).nextFocus();
                        }
                      },*/


                    ),
                  ),
                ],
              ),
            ),
          ),









          SizedBox(
            height: 35,),
              InkWell(
                child: Container(
                  height: 50,width: 320,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Color(0xffff9700)
                  ),
                  margin: EdgeInsets.only(right: 5),
                  child: Center(
                    child: Text('Verify',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,
                        height: 1.2125,color: Color(0xffffffff))),
                  ),
                ),
                onTap: (){
                  if (pin1Controller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else if (pin2Controller.text.isEmpty){
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }else if (pin3Controller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }else if (pin4Controller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }else if (pin5Controller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  }else if (pin6Controller.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: "PLEASE enter otp",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  } else{
                    otp = pin1Controller.text+""+pin2Controller.text+""+pin3Controller.text+""+pin4Controller.text+""+pin5Controller.text+""+pin6Controller.text;
                    verifyOtpPostRequest();
                  }

                },
              ),
              SizedBox(height: 40,),
              RichText(textAlign: TextAlign.right,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Don't receive OTP?",
                            style: GoogleFonts.inter(fontSize: 13,fontWeight: FontWeight.w400,
                                height: 1.2125,color: Color(0xff7e8696))

                        ),
                        TextSpan(
                          text: ' Resend',
                          style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,
                              height: 1.2125,color: Color(0xffff9700)),

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



