import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'MediaModal.dart';

/// Creates list of video players
class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  String videoId = "videoId";
  var list = <MediaModel>[];
  Future<void> getMediaAppearance() async {//'http://192.168.1.28/finversify/getTips'
    final url = Uri.parse("http://192.168.1.57/finversify/getMediaAppearance");
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
      });

    }
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');


  }

  final List<YoutubePlayerController> _controllers = ['VbQ5HVAnG1Y']
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(

      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    ),
  )
      .toList();
  @override
  void initState() {
    getMediaAppearance();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Appearance'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return YoutubePlayer(
            key: ObjectKey(_controllers[index]),
            controller: _controllers[index],
            actionsPadding: const EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              const SizedBox(width: 10.0),
              ProgressBar(isExpanded: true),
              const SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          );
        },
        itemCount: _controllers.length,

      ),
    );
  }
}