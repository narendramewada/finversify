import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class recommendationtips extends StatefulWidget {
  const recommendationtips({Key? key}) : super(key: key);

  @override
  State<recommendationtips> createState() => _recommendationtipsState();
}

class _recommendationtipsState extends State<recommendationtips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          title: Text('Recommendation Tips'),
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
                           //color: Colors.pink,
                          height: 90,width: 250,
                          child: Column(
                            children: [
                              SizedBox(height: 6,),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                 //color: Colors.blueGrey,
                                height: 30,width: 245,
                                child: Text('Stock Future- Company name',
                                    style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                        height: 1.2125,color: Color(0xff000000))),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                //color: Colors.deepOrangeAccent,
                                height: 52,width: 245,
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
    );
  }
}
