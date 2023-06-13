import 'dart:async';
import 'dart:convert';

import 'package:finversify/DemoModel.dart';
import 'package:finversify/api_address.dart';
import 'package:finversify/tipsdetail.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
class tips extends StatefulWidget {
  const tips({Key? key}) : super(key: key);

  @override
  State<tips> createState() => _tipsState();
}

class _tipsState extends State<tips> {
  var userId ="";
  var data = <DemoModel>[];
  Future<void> getTipsPostRequest() async {//'http://192.168.1.28/finversify/getTips'
    final url = Uri.parse("${api_address.ip}getTips");
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();
    map['user_id'] = userId;
print(userId);
print('userId');

    final response = await post(url, body: map);
    if(response.statusCode == 200){
      var status = jsonDecode(response.body) ["status"];
      print('Body: ${status}');
      print('Body: ${response.body}');
      setState(() {
        Iterable jsonResponse = json.decode(response.body)['data'];
        data = jsonResponse.map((data) => DemoModel.fromJson(data)).toList();
      });

    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

  }



   fetchData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/albums');
    final response = await get(url);
    if (response.statusCode == 200) {
      print(response.body);
      Iterable jsonResponse = json.decode(response.body);
      data = jsonResponse.map((data) => DemoModel.fromJson(data)).toList();
      print(data);
    } else {
      throw Exception('Unexpected error occured!');
    }
  }
  addStringToSF() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userId =  prefs.getString("id")!;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addStringToSF();
    Timer(Duration(seconds: 2),(){
      print("This is printed after 2 seconds.");
      fetchData();
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.grey.shade50,
          title: Text('Tips'),
          elevation: 0,

        ),


        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 16,right: 16),
          child: Container(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => tipsdetail(),));
                    },
                    child: Container(
                      color: Colors.white,
                      height: 90,width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(data[index].company_logo),
                                    fit: BoxFit.contain
                                ),
                                color: Color(0x0cff9700),
                                borderRadius: BorderRadius.circular(100)
                            ),

                            height: 60,width: 60,
                          ),

                          Container(
                            // color: Colors.pink,
                            height: 90,width: 250,
                            child: Column(
                              children: [
                                SizedBox(height: 6,),
                                Container(
                                  margin: EdgeInsets.only(left: 18),
                                  //color: Colors.blueGrey,
                                  height: 30,width: 280,
                                  alignment: Alignment.centerLeft,
                                  child: Text(data[index].title,
                                      style: GoogleFonts.inter(fontSize: 14,fontWeight: FontWeight.w600,
                                          height: 1.2125,color: Color(0xff000000))),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 18),
                                  //color: Colors.deepOrangeAccent,
                                  height: 52,width: 280,
                                  child: Text(data[index].description,
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
                );
              },),
          ),
        )
    );
  }
}
