import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class myplans extends StatefulWidget {
  const myplans({Key? key}) : super(key: key);

  @override
  State<myplans> createState() => _myplansState();
}

class _myplansState extends State<myplans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade50,
        title: Text('My active plans'),
        elevation: 0,

      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 15,right: 15),
          child: Container(
            child: ListView.builder(
              itemCount:15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    alignment: Alignment.topCenter,
                    height: 115,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        SizedBox(height: 6,),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 14),
                              //color: Colors.blueGrey,
                              height: 25,width: 220,

                              child: Text('Equity Cash',
                                  style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xff000000))),
                            ),

                            Container(
                              height: 25,width: 80,
                              //color: Colors.blue,
                              child: Row(
                                children: [


                                  /*Text('₹',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xffff9700),letterSpacing: 0.36)),*/
                                  Text('₹2000',style: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xffff9700),letterSpacing: 0.36)),

                                ],
                                mainAxisAlignment: MainAxisAlignment.end,
                              ),

                            )
                          ],

                        ),

                        Container(
                          //margin: EdgeInsets.only(left: 8),
                          //color: Colors.deepOrangeAccent,
                          height: 20,width: 300,
                          child: Text('Monthly plan activated',
                              style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                  height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
                        ),
                        Divider(),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 14),
                              //color: Colors.blueGrey,
                              height: 18,width: 60,

                              child: Text('Active plan:',
                                  style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xff000000))),
                            ),

                            Container(
                              height: 18,width: 100,
                              //color: Colors.blue,
                              child: Text('25 May 2023',style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                  height: 1.2125,color: Color(0xff7e8696),letterSpacing: 0.36)),
                              //alignment: Alignment.topLeft,
                            )
                          ],

                        ),

                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 14),
                              //color: Colors.deepOrangeAccent,
                              height: 18,width: 30,
                              child: Text('Valid:',
                                  style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xff000000))),
                            ),
                            Container(
                              height: 18,width: 100,
                              //color: Colors.blue,
                              child: Text('25 June 2023',style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                  height: 1.2125,color: Color(0xff7e8696),letterSpacing: 0.36)),
                              alignment: Alignment.topLeft,
                            )
                          ],
                        ),

                      ],
                    ),
                  ),
                );
              },),
          ),
        )
    );
  }
}
