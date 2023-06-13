import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
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
                child: Text("Forgot password",style: GoogleFonts.inter(fontSize: 30,
                    fontWeight: FontWeight.w700,height: 1.2125,color: Color(0xff000000))),
              ),

              Container(
                //color: Colors.cyan,
                height: 50,width: 310,
                margin: EdgeInsets.only(left: 10.91),
                child: Text("Lorem ipsum dolor sit amet consectetur!",style: GoogleFonts.inter(fontSize: 15,
                    fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff7e8696))),
              ),
              Container(
                // color: Colors.green,
                height: 25,width: 310,
                margin: EdgeInsets.only(left: 10.91),
                child: Text("Email/Phone",style: GoogleFonts.inter(fontSize: 18,
                    fontWeight: FontWeight.w500,height: 1.2125,color: Color(0xff000000))),
              ),
              Container(
                height: 50,width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),

                margin: EdgeInsets.only(left: 21),
                child: TextField(
                  decoration: InputDecoration(
                     border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    //border: Border.all(color: Color(0xffe9edf6)),
                      hintText: 'Enter your email/phone no. '
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),color: Color(0xffff9700)
                ),
                margin: EdgeInsets.only(left: 21),
                child: Center(
                  child: Text('Send',style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w600,
                      height: 1.2125,color: Color(0xffffffff))),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
