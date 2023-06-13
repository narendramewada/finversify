import 'dart:async';
import 'dart:math';

import 'package:finversify/botton_nv.dart';
import 'package:finversify/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => splashState();
}

class splashState extends State<splash> {
  static const String KEYLOGIN = "login";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    whereToGo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
        child: Center(child: Text('SPLASH',style: TextStyle(fontSize: 40),)),

      ),
    );
  }

  void whereToGo() async {
    var sharedPrefs = await SharedPreferences.getInstance();
    
    var isLoggedIn = sharedPrefs.getBool("KEYLOGIN");


    Timer((Duration(seconds: 2)), () {

      if(isLoggedIn!=null){
        if(isLoggedIn){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => bottom_nv(),));

        } else{
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login(),));
        }
      } else{
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login(),));
      }

    });
  }
}
