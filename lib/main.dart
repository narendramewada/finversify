import 'package:finversify/botton_nv.dart';
import 'package:finversify/forgot_password.dart';
import 'package:finversify/login.dart';
import 'package:finversify/profile.dart';
import 'package:finversify/sign-up.dart';
import 'package:finversify/splash.dart';
import 'package:flutter/material.dart';

import 'otp_verification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     /* title: 'Flutter Demo',*/
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: const bottom_nv(),
    );
  }
}

