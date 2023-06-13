import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class tipsdetail extends StatefulWidget {
  const tipsdetail({Key? key}) : super(key: key);

  @override
  State<tipsdetail> createState() => _tipsdetailState();
}

class _tipsdetailState extends State<tipsdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade50,
        title: Text('Tips Details'),
        elevation: 0,
        
      ),


     body: Padding(
       padding: const EdgeInsets.only(bottom: 16.0,top: 8,left: 15,right: 15),
       child: Column(
         children: [
           Container(
             color: Colors.white,
             height: 60,width: MediaQuery.of(context).size.width,
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

                   height: 50,width: 50,
                 ),
                 SizedBox(width: 20,),

                 Text('Equity Cash',
                     style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                         height: 1.2125,color: Color(0xff000000))),
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 4.0,right: 4),
             child: Container(
               alignment: Alignment.topLeft,
               height: 30,
               //color: Colors.pinkAccent,
               child: Text('Company name',style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                   height: 1.2125,color: Color(0xff000000)))
             ),
           ),
           Container(
             height: 150,
             //color: Colors.greenAccent,
             child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do\neiusmod tempor incididunt ut'
             'labore et dolore magna aliqua.\n\nUt enim ad minim veniam, quis nostrud exercitation ullamco\nlaboris nisi ut aliquip ex'
             'commodo consequat. \n\nDuis aute irure dolor in reprehenderit in voluptate velit'
             'esse\ncillum dolore eu fugiat nulla pariatur.',style: GoogleFonts.inter(fontSize: 10,fontWeight: FontWeight.w500,
                 height: 1.4444444444,color: Color(0xff7e8696),letterSpacing: 0.36)),
           ),
           Padding(
             padding: const EdgeInsets.all(4.0),
             child: Container(
               height: 200,
               decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage('assets/media5.png'),
                   fit: BoxFit.cover
                 ),
                 //color: Colors.grey
               ),
               //child: Image.asset('assets/media4.png'),
             ),
           )

         ],
       ),
     ),




    );
  }
}
