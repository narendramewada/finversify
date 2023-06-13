import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class aboutus extends StatefulWidget {
  const aboutus({Key? key}) : super(key: key);

  @override
  State<aboutus> createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
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
                //color: Colors.pinkAccent,
                height: 35,width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    InkWell(
                      child: Container(

                        height: 22,width: 24,
                        child: Icon(Icons.arrow_back_outlined),
                        alignment: Alignment.centerLeft,

                      ),
                      onTap: (){
                        Navigator.of(context).pop();
                      },
                    ),
                    SizedBox(width: 10,),
                    Container(
                      //color: Colors.blueGrey,
                      height: 30,width: 180,
                      margin: EdgeInsets.only(top: 5),
                      child: Text('About Us',style: GoogleFonts.inter(fontSize: 18,fontWeight: FontWeight.w600,
                          height: 1.2125,letterSpacing: 0.2,color: Color(0xff000000))),
                      alignment: Alignment.centerLeft,
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 562
                  ),
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'
                      ' Id diam maecenas ultricies mi eget mauris pharetra. Massa massa ultricies mi quis hendrerit dolor. Faucibus ornare suspendisse sed nisi '
                      'lacus sed viverra. Vitae turpis massa sed elementum. Semper risus in hendrerit gravida rutrum quisque.\n\nFacilisi etiam dignissim diam '
                      'quis enim lobortis. At augue eget arcu dictum varius duis at consectetur. Morbi quis commodo odio aenean sed. Sed vulputate odio ut enim '
                      'blandit volutpat maecenas volutpat blandit. Orci dapibus ultrices in iaculis nunc. Purus gravida quis blandit turpis cursus in. Sit amet '
                      'facilisis magna etiam tempor orci eu lobortis elementum.\n\nVitae nunc sed velit dignissim sodales. Integer vitae justo eget magna fermentum'
                      ' iaculis eu non diam. Lorem mollis aliquam ut porttitor leo a diam sollicitudin. Dictumst quisque sagittis purus sit amet volutpat consequat '
                      'mauris. Accumsan lacus vel facilisis volutpat. Vitae nunc sed velit dignissim sodales ut eu sem.\n\nViverra justo nec ultrices dui sapien eget mi. '
                      'Vitae ultricies leo integer malesuada nunc vel risus. Dignissim convallis aenean et tortor at. Massa enim nec dui nunc mattis enim ut tellus. '
                      'Pellentesque massa placerat duis ultricies lacus sed turpis. Dui id ornare arcu odio ut sem nulla pharetra. \n\nUllamcorper malesuada proin libero '
                      'nunc consequat. Rhoncus aenean vel elit scelerisque mauris. Lorem mollis aliquam ut porttitor leo a diam sollicitudin tempor. Eget lorem dolor '
                      'sed viverra ipsum nunc aliquet bibendum. Id volutpat lacus laoreet non curabitur gravida arcu. Hac habitasse platea dictumst vestibulum rhoncus est '
                      'pellentesque elit. Natoque penatibus et magnis dis parturient montes.',
                  style: GoogleFonts.inter(fontSize: 12,fontWeight: FontWeight.w400,
                  height: 1.4444444444,letterSpacing: 0.1,color: Color(0xff7e8696),),),
                ),
              ),



            ],
          ),
        ),
      ),
      ),
    );
  }
}
