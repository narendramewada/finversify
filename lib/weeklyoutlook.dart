import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class weeklyoutlook extends StatefulWidget {
  const weeklyoutlook({Key? key}) : super(key: key);

  @override
  State<weeklyoutlook> createState() => _weeklyoutlookState();
}

class _weeklyoutlookState extends State<weeklyoutlook> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.grey.shade50,
          title: Text('Weekly Outlook'),
          elevation: 0,

        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 15,right: 15),
          child: Container(
            child: ListView.builder(
              itemCount:15,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    color: Colors.white,
                    height: 110,width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/daily2.png'),
                                  fit: BoxFit.cover
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          height: 110,width: 110,

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0),
                          //color: Colors.pink,
                          height: 110,width: 220,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                //color: Colors.blueGrey,
                                height: 30,width: 210,
                                child: Text('Weekly Outlook',
                                    style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                        height: 1.2125,color: Color(0xff000000))),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                //color: Colors.deepOrangeAccent,
                                height: 60,width: 210,
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
                );
              },),
          ),
        )
    );
  }
}
