import 'package:finversify/equity_cash.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class services extends StatefulWidget {
  const services({Key? key}) : super(key: key);

  @override
  State<services> createState() => _servicesState();
}

class _servicesState extends State<services> {
  @override
  Widget build(BuildContext context) {
    var arrNames= ['Equity Cash','Index Futures','Index Options','Stock Futures','Stock Options',
    'Option Selling','MCX'];
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          title: Text('Services'),
          elevation: 0,

        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16),
          child: Container(
            child: ListView.builder(
              itemCount: arrNames.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 15.0),
                  child: InkWell(
                    child: Container(
                      height: 60,width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              height: 30,width: 150,
                              //color: Colors.white,
                              child: Text(arrNames[index],style: GoogleFonts.inter(fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1666666667,color: Color(0xff000000))),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          SizedBox(width: 80,),
                          Container(
                            height: 12,width: 40,

                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/rightarrow.png'),
                                  fit: BoxFit.contain
                              ),
                              //color: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => equity_cash(),));
                    },
                  ),
                );
              },),
          ),
        )


    );
  }
}
