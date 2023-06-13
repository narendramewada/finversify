import 'package:finversify/dailyoutlook.dart';
import 'package:finversify/weeklyoutlook.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class finsight extends StatefulWidget {
  const finsight({Key? key}) : super(key: key);

  @override
  State<finsight> createState() => _finsightState();
}

class _finsightState extends State<finsight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 15,right: 15),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Container(
                    height: 30,
                    child: Text('Finsights',style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,
                        height: 1.2125,color: Color(0xff000000))),
                    alignment: Alignment.centerLeft,
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 150,width: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/dailyoutlook.png'),
                                    fit: BoxFit.cover
                                  )
                                ),
                                height: 65,width: 65,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  //color: Colors.blue,
                                  height: 30,width: 100,
                                  child: Text('Daily Outlook',style: GoogleFonts.inter(fontSize: 12,
                                  fontWeight: FontWeight.w600,height: 1.2125,
                                  color: Color(0xff000000))),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/rightarrow.png'),
                                          fit: BoxFit.contain
                                    ),
                                    //color: Colors.yellow,
                                  ),
                                  height: 15,width: 15,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => dailyoutlook(),));
                      },
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      child: Container(
                        height: 150,width: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/weeklyoutlook.png'),
                                        fit: BoxFit.cover
                                    )
                                ),
                                height: 65,width: 65,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  //color: Colors.blue,
                                  height: 30,width: 100,
                                  child: Text('Weekly Outlook',style: GoogleFonts.inter(fontSize: 12,
                                      fontWeight: FontWeight.w600,height: 1.2125,
                                      color: Color(0xff000000))),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/rightarrow.png'),
                                        fit: BoxFit.contain
                                    ),
                                    //color: Colors.yellow,
                                  ),
                                  height: 15,width: 15,
                                )
                              ],
                            )
                          ],
                        ),

                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => weeklyoutlook(),));
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        height: 150,width: 150,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/learning.png'),
                                        fit: BoxFit.cover
                                    )
                                ),
                                height: 65,width: 65,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  //color: Colors.blue,
                                  height: 30,width: 100,
                                  child: Text('Learning Videos',style: GoogleFonts.inter(fontSize: 12,
                                      fontWeight: FontWeight.w600,height: 1.2125,
                                      color: Color(0xff000000))),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/rightarrow.png'),
                                        fit: BoxFit.contain
                                    ),
                                    //color: Colors.yellow,
                                  ),
                                  height: 15,width: 15,
                                )
                              ],
                            )
                          ],
                        ),

                      ),
                      onTap: (){},
                    ),
                    SizedBox(width: 20,),
                    Container(
                      height: 150,width: 150,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/webinar.png'),
                                      fit: BoxFit.cover
                                  )
                              ),
                              height: 65,width: 65,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                //color: Colors.blue,
                                height: 30,width: 100,
                                child: Text('Webinar',style: GoogleFonts.inter(fontSize: 12,
                                    fontWeight: FontWeight.w600,height: 1.2125,
                                    color: Color(0xff000000))),
                                alignment: Alignment.centerLeft,
                              ),
                              SizedBox(width: 10,),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('assets/rightarrow.png'),
                                      fit: BoxFit.contain
                                  ),
                                  //color: Colors.yellow,
                                ),
                                height: 15,width: 15,
                              )
                            ],
                          )
                        ],
                      ),

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
