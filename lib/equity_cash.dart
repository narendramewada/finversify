import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class equity_cash extends StatefulWidget {
  const equity_cash({Key? key}) : super(key: key);

  @override
  State<equity_cash> createState() => _equity_cashState();
}

class _equity_cashState extends State<equity_cash> {
  bool _value1 = false;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade50,
        title: Text('Equity Cash'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 15,left: 15,top: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                //color: Colors.greenAccent,
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut'
                    'labore et dolore magna aliqua.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex'
                    'commodo consequat. \n\nDuis aute irure dolor in reprehenderit in voluptate velit'
                    'esse\ncillum dolore eu fugiat nulla pariatur.',style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                    height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
              ),
              Container(
                height: 25,
                //color: Colors.greenAccent,
                child: Text('Plan Benefits:',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                height: 1.2125,color: Color(0xff000000))),
                alignment: Alignment.topLeft,
              ),

              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        margin: EdgeInsets.only(bottom: 18),

                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing\n elit,sed do eiusmod tempor',
                          style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        margin: EdgeInsets.only(bottom: 18),

                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing\n elit,sed do eiusmod tempor',
                          style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                              height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        margin: EdgeInsets.only(bottom: 18),

                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing\n elit,sed do eiusmod tempor',
                          style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                              height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                //color: Colors.blueGrey,
                child: Row(
                  children: [
                    Container(
                        //color: Colors.cyan,
                        child: Image.asset('assets/tick1.png',height: 12,width: 12,)),
                    SizedBox(width: 8,),
                    Container(
                      //color: Colors.pinkAccent,
                      child: Text('Lorem ipsum dolor sit amet, consectetur',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                          height: 1.6666666667,color: Color(0xff7e8696),letterSpacing: 0.36)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x19ff9700),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 50,
                  width: 300,
                  child: Center(child: Text('Avail Free Trial Now',style: GoogleFonts.inter(fontSize: 14,
                  fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xffff9700)),)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 12),
                child: Container(
                  //color: Colors.blue,
                  alignment: Alignment.topLeft,
                  child: Text('Valid for 3 days',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                  height: 1.4444444444,color: Color(0xff000000))),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: 25,
                //color: Colors.greenAccent,
                child: Text('Membership plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                    height: 1.2125,color: Color(0xff000000))),
                alignment: Alignment.topLeft,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 140,width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [

                          InkWell(
                            child: Container(
                              margin: EdgeInsets.only(top: 8,left: 100),
                              height: 18,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey),
                                color: Color(0xfff4f4f5)
                              ),
                              child: _value1 ? null
                                  : Image.asset('assets/tick2.png'),

                            ),
                            onTap: (){
                              setState(() {
                                _value2 = true;
                                _value3 = true;
                                _value4 = true;
                                _value1 = !_value1;
                              });
                            },
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 30,width: 100,
                            decoration: BoxDecoration(
                              color: Color(0x19aa77ff),
                              borderRadius: BorderRadius.circular(50)

                            ),
                            child: Center(
                              child: RichText(
                                  textAlign: TextAlign.right,
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "Save",
                                        style: GoogleFonts.inter(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2125,
                                            color: Color(0xff000000))),
                                    TextSpan(
                                      text: ' 20%',
                                      style: GoogleFonts.inter(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125,
                                          color: Color(0xff000000)),

                                    )
                                  ])),
                            )
                          ),
                          SizedBox(height: 10,),
                          Text('Monthly Plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500,
                          height: 1.2125,color: Color(0xff000000)),),
                          SizedBox(height: 10,),
                          RichText(
                              textAlign: TextAlign.right,
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "₹",
                                    style: GoogleFonts.inter(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125,
                                        color: Color(0xffaa77ff))),
                                TextSpan(
                                  text: '2000',
                                  style: GoogleFonts.inter(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      height: 1.2125,
                                      color: Color(0xff000000)),

                                )
                              ])),

                        ],
                      )

                    ),
                  ),
                  SizedBox(width: 14,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 140,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [

                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 8,left: 100),
                                height: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                    color: Color(0xfff4f4f5)
                                ),
                                child: _value2 ? null
                                    : Image.asset('assets/tick2.png'),

                              ),
                              onTap: (){
                                setState(() {
                                  _value1 = true;
                                  _value3 = true;
                                  _value4 = true;
                                  _value2= !_value2;
                                });
                              },
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 30,width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0x196fd2b8),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                                child: Center(
                                  child: RichText(
                                      textAlign: TextAlign.right,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Save",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2125,
                                                color: Color(0xff000000))),
                                        TextSpan(
                                          text: ' 25%',
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2125,
                                              color: Color(0xff000000)),

                                        )
                                      ])),
                                )
                            ),
                            SizedBox(height: 10,),
                            Text('Monthly Plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500,
                                height: 1.2125,color: Color(0xff000000)),),
                            SizedBox(height: 10,),
                            RichText(
                                textAlign: TextAlign.right,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "₹",
                                      style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125,
                                          color: Color(0xff6fd2b8))),
                                  TextSpan(
                                    text: '5000',
                                    style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125,
                                        color: Color(0xff000000)),

                                  )
                                ])),

                          ],
                        )

                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 140,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [

                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 8,left: 100),
                                height: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                    color: Color(0xfff4f4f5)
                                ),
                                child: _value3 ? null
                                    : Image.asset('assets/tick2.png'),

                              ),
                              onTap: (){
                                setState(() {
                                  _value2 = true;
                                  _value1 = true;
                                  _value4 = true;
                                  _value3 = !_value3;
                                });
                              },
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 30,width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0x1962cdff),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                                child: Center(
                                  child: RichText(
                                      textAlign: TextAlign.right,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Save",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2125,
                                                color: Color(0xff000000))),
                                        TextSpan(
                                          text: ' 20%',
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2125,
                                              color: Color(0xff000000)),

                                        )
                                      ])),
                                )
                            ),
                            SizedBox(height: 10,),
                            Text('Monthly Plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500,
                                height: 1.2125,color: Color(0xff000000)),),
                            SizedBox(height: 10,),
                            RichText(
                                textAlign: TextAlign.right,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "₹",
                                      style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125,
                                          color: Color(0xff62cdff))),
                                  TextSpan(
                                    text: '10,000',
                                    style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125,
                                        color: Color(0xff000000)),

                                  )
                                ])),

                          ],
                        )

                    ),
                  ),
                  SizedBox(width: 14,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 140,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [

                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 8,left: 100),
                                height: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.grey),
                                    color: Color(0xfff4f4f5)
                                ),
                                child: _value4 ? null
                                    : Image.asset('assets/tick2.png'),

                              ),
                              onTap: (){
                                setState(() {
                                  _value2 = true;
                                  _value3 = true;
                                  _value1 = true;
                                  _value4 = !_value4;
                                });
                              },
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 30,width: 100,
                                decoration: BoxDecoration(
                                    color: Color(0x19ea5455),
                                    borderRadius: BorderRadius.circular(50)

                                ),
                                child: Center(
                                  child: RichText(
                                      textAlign: TextAlign.right,
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "Save",
                                            style: GoogleFonts.inter(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2125,
                                                color: Color(0xff000000))),
                                        TextSpan(
                                          text: ' 20%',
                                          style: GoogleFonts.inter(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2125,
                                              color: Color(0xff000000)),

                                        )
                                      ])),
                                )
                            ),
                            SizedBox(height: 10,),
                            Text('Monthly Plan',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w500,
                                height: 1.2125,color: Color(0xff000000)),),
                            SizedBox(height: 10,),
                            RichText(
                                textAlign: TextAlign.right,
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "₹",
                                      style: GoogleFonts.inter(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2125,
                                          color: Color(0xffea5455))),
                                  TextSpan(
                                    text: '20,000',
                                    style: GoogleFonts.inter(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        height: 1.2125,
                                        color: Color(0xff000000)),

                                  )
                                ])),

                          ],
                        )

                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffff9700)),
                margin: EdgeInsets.only(left: 21,top: 30,bottom: 20),
                child: Center(
                  child: Text('Payment',
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
    );
  }
}
