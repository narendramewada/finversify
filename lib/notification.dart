import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          title: Text('Notifications'),
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
                    alignment: Alignment.topCenter,
                    color: Colors.white,
                    height: 76,
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

                              child: Text('Lorem ipsum',
                                  style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w600,
                                      height: 1.2125,color: Color(0xff000000))),
                            ),

                            Container(
                              height: 25,width: 80,
                              //color: Colors.blue,
                              child: Text('5 min ago',style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                  height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
                              alignment: Alignment.topRight,
                            )
                          ],

                        ),
                        SizedBox(height: 5,),
                        Container(
                          //margin: EdgeInsets.only(left: 8),
                          //color: Colors.deepOrangeAccent,
                          height: 30,width: 300,
                          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit,',
                              style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                                  height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
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
