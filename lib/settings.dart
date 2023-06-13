import 'dart:convert';
import 'package:finversify/aboutus.dart';
import 'package:finversify/contactus.dart';
import 'package:finversify/history.dart';
import 'package:finversify/login.dart';
import 'package:finversify/myplans.dart';
import 'package:finversify/notification.dart';
import 'package:finversify/password.dart';
import 'package:finversify/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {


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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center
                    ),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  height: 80,width: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //color: Colors.pink,
                    height: 20,
                    child: Text('Narendra',style: GoogleFonts.inter(fontSize: 16,
                    fontWeight: FontWeight.w600,height: 1.2125,color: Color(0xff000000))),
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 50,),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/profile1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('Profile',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/password1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('Change Password',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => password(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/aboutus1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('About Us',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => aboutus(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/notification1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('Notifications',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => notification(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/plan1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('My Active Plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => myplans(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logout1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('History',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => history(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/contactus1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('Contact Us',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => contactus(),));
                  },
                ),
                Divider(),
                InkWell(
                  child: Container(
                    //color: Colors.pinkAccent,
                    height: 35,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(

                          height: 15,width: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/logout1.png'),
                                alignment: Alignment.center
                            ),
                            //color: Colors.orangeAccent,


                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          //color: Colors.blueGrey,
                          height: 30,width: 220,
                          child: Text('Logout',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w400,
                              height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                          alignment: Alignment.centerLeft,
                        ),
                        SizedBox(width: 60,),
                        Container(
                          //color: Colors.green,
                          height: 16,width: 16,
                          child: Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffcccccc),size: 16,),
                        ),
                      ],
                    ),


                  ),
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login(),));
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








