import 'dart:convert';

import 'package:finversify/api_address.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'MediaModal.dart';
class media extends StatefulWidget {
  const media({Key? key}) : super(key: key);

  @override
  State<media> createState() => _mediaState();
}

class _mediaState extends State<media> {
  final url = "";
  String videoId = "videoId";
  late YoutubePlayerController _controller;

  //var list = <dynamic> [];
  var list = <MediaModel>[];
  Future<void> getMediaAppearance() async {//'http://192.168.1.28/finversify/getTips'
    final url = Uri.parse("${api_address.ip}getMediaAppearance");
    final headers = {/*"Content-type": "application/json"*/};
    final map = Map();
    // map['user_id'] = userId;

    final response = await post(url, body: map);
    if(response.statusCode == 200){
      var status = jsonDecode(response.body) ["status"];
      print('Body: ${status}');
      print('Body: ${response.body}');
      setState(() {

       Iterable jsonResponse = json.decode(response.body)['data'];
       list = jsonResponse.map((data) => MediaModel.fromJson(data)).toList();
       //print("list == "+list.length.toString());
      });

    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');


  }



  @override
  void initState() {
    getMediaAppearance();
    //final videoId = YoutubePlayer.convertUrlToId('url');
    /*_controller = YoutubePlayerController(
        initialVideoId: "videoId",
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: true,

      )
    );*/
    super.initState();
  }

  /*loadVideoPlayer(String url){
    _controller = YoutubePlayerController.network(url);
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize().then((value){
      setState(() {});
    });

  }*/

  @override
  Widget build(BuildContext context) {
   //var arrImage = ['assets/media1.png','assets/media2.png', 'assets/media4.png','assets/media5.png'];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade50,
        title: Text('Media appearance'),
        elevation: 0,
      ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 15,right: 15),
          child: Container(
            child: GridView.builder(
              itemCount: list.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8

              ), itemBuilder: (context, index) {
           //  loadVideoPlayer(list[index].url);
                //_controller = YoutubePlayerController.network(list[index].url);
              return
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                    ),
                    height: 160,
                    width: 160,
                    child: Stack(
                      children: [
                        Center(
                          child: YoutubePlayer(
                            controller: YoutubePlayerController(
                            initialVideoId: list[index].videoId,
                              flags: YoutubePlayerFlags(
                                autoPlay: true,
                                mute: true,
                                showLiveFullscreenButton: true,

                              )

                         ),
                            onReady: (){
                              print('Player is ready');
                            },
                          ),
                        ),

                        /*Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 60.0,left: 60),
                            child: InkWell(
                              child: SizedBox(
                                child: Icon(_controller.value.isPlaying? Icons.pause:Icons.play_arrow),
                              ),
                              onTap: (){
                                if(_controller.value.isPlaying){
                                  _controller.pause();
                                }else {
                                  _controller.play();
                                }
                                setState(() {

                                });
                              },

                            ),
                          ),
                        ),*/



                      ],
                    ),

                  ),
                ],
              );

            },),
          ),
        )


    );
  }
}
