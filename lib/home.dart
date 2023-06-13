import 'package:finversify/recommendationtips.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'media.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 7,left: 15,right: 15),
              child: Container(
                //color: Colors.cyan,
                height: 50,width: MediaQuery.of(context).size.width,
                //color: Colors.cyan,
                child: Row(
                  children: [
                    Container(//color: Colors.pink,
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/profile.png'),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(100)
                      ),

                    ),

                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          //color: Colors.yellow,
                          height: 30,width: 245,
                          child: Text('Narendra Mewada',style: GoogleFonts.inter(fontSize:15,
                          fontWeight: FontWeight.w600,height: 1.2125,
                          color: Color(0xff000000))),
                        ),
                        Container(
                         // color: Colors.green,
                          margin: EdgeInsets.only(left: 10),
                          height: 20,width: 245,
                          child: Text('91 98260 99304',style: GoogleFonts.inter(fontSize: 12,
                          fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff7e8696))),
                        )
                      ],
                    ),
                    //SizedBox(width: 140,),
                        Container(
                      height: 22,width: 22,
                      child: Image.asset('assets/notification.png'),
                        ),


                  ],
                ),
              ),
            ),
    Padding(
        padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
        child: Container(
        //color: Colors.amber,
        height: 95,width: MediaQuery.of(context).size.width,
        child: Row(
        children: [
          Container(color: Colors.white,
            height: 95,width: 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(

                    child: Text('70%',style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w700,
                    height: 1.2125,color: Color(0xff000000))),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text('Equity Cash',style: GoogleFonts.inter(fontSize: 12,
                  fontWeight: FontWeight.w600,
                  height: 1.2125,
                  color: Color(0xff000000)),),
                ),
                Container(
                  child: Text('Monthly accuracy',style: GoogleFonts.inter(fontSize: 8,fontWeight: FontWeight.w400,
                  height: 1.2125,color: Color(0xff666666)),
                )
                ),
              ],
            )
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child:  Container(color: Colors.white,
                height: 95,width: 100,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Container(

                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Text('₹',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w500,
                            height: 1.2125,color: Color(0xffff9700))),
                            Text('65,000',style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w700,
                                height: 1.2125,color: Color(0xff000000))),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Text('Stock Future',style: GoogleFonts.inter(fontSize: 12,
                          fontWeight: FontWeight.w600,
                          height: 1.2125,
                          color: Color(0xff000000)),),
                    ),
                    Container(
                        child: Text('Monthly accuracy',style: GoogleFonts.inter(fontSize: 8,fontWeight: FontWeight.w400,
                            height: 1.2125,color: Color(0xff666666)),
                        )
                    ),
                  ],
                )
            ),
          ),
          Container(color: Colors.white,
              height: 95,width: 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Container(

                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Text('₹',style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w500,
                              height: 1.2125,color: Color(0xffff9700))),
                          Text('50,000',style: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.w700,
                              height: 1.2125,color: Color(0xff000000))),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text('Stock Option',style: GoogleFonts.inter(fontSize: 12,
                        fontWeight: FontWeight.w600,
                        height: 1.2125,
                        color: Color(0xff000000)),),
                  ),
                  Container(
                      child: Text('Monthly accuracy',style: GoogleFonts.inter(fontSize: 8,fontWeight: FontWeight.w400,
                          height: 1.2125,color: Color(0xff666666)),
                      )
                  ),
                ],
              )
          ),
        ],
        ),
        ),
    ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 18),
              child: Container(
                //color: Colors.pink,
                height: 18,width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text('Media Appearance',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                    height: 1.2125,color: Color(0xff000000))),
                    SizedBox(width: 138,),
                    InkWell(
                      child: Text('View more  >',textAlign: TextAlign.right,style: GoogleFonts.inter(fontSize: 10,
                          fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff7e8696)),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => media(),));
                      },
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 15,right: 15),
              child: Container(
                height: 170,width: MediaQuery.of(context).size.width,
                //color: Colors.yellow,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/media1.png'),
                              fit: BoxFit.cover

                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      height: 160,width: 160,
                      child: Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: SizedBox(
                          child: Image.asset('assets/playbutton.png'),
                        ),
                      ),
                    ),
                  );
                },),
              ),

              ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0,left: 15,right: 15),
              child: Container(
                color: Colors.white,
                height: 110,width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/media3.png'),
                          fit: BoxFit.cover
                        ),
                      color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      height: 110,width: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: SizedBox(
                          child: Image.asset('assets/playbutton.png'),
                        ),
                      ),

                    ),
                    Container(
                      //color: Colors.pink,
                      height: 110,width: 220,
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          Container(
                            //color: Colors.blueGrey,
                            height: 30,width: 200,
                            child: Text('Daily Outlook',
                            style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                            height: 1.2125,color: Color(0xff000000))),
                          ),
                          Container(
                           // color: Colors.deepOrangeAccent,
                            height: 60,width: 200,
                            child: Text('Lorem ipsum dolor sit amet, adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut.',
                            style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                            height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 18),
              child: Container(
                //color: Colors.pink,
                height: 18,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Text('Recommendation Tips',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                        height: 1.2125,color: Color(0xff000000))),
                    SizedBox(width: 115,),
                    InkWell(
                      child: Text('View more  >',textAlign: TextAlign.right,style: GoogleFonts.inter(fontSize: 10,
                          fontWeight: FontWeight.w400,height: 1.2125,color: Color(0xff7e8696)),),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => recommendationtips(),));
                      },
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8,left: 15,right: 15),
              child: SizedBox(
                height: 250,
                child: ListView.builder(
                 shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Container(
                      alignment: Alignment.topCenter,
                      color: Colors.white,
                      height: 90,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/finversifylogo.png'),
                                    fit: BoxFit.contain
                                ),
                                color: Color(0x0cff9700),
                                borderRadius: BorderRadius.circular(100)
                            ),

                            height: 80,width: 80,
                          ),
                          Container(
                            // color: Colors.pink,
                            height: 90,width: 250,
                            child: Column(
                              children: [
                                SizedBox(height: 6,),
                                Container(
                                  // color: Colors.blueGrey,
                                  height: 30,width: 235,
                                  child: Text('Stock Future- Company name',
                                      style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                          height: 1.2125,color: Color(0xff000000))),
                                ),
                                Container(
                                  //color: Colors.deepOrangeAccent,
                                  height: 52,width: 235,
                                  child: Text('Lorem ipsum dolor sit amet, consectetur elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut.',
                                      style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                          height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },),
              ),
            )


          ],
        ),
      ),
    );
  }
}
