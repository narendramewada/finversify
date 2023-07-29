class MediaModel {
  final String videoId;
  final String title;
  final String url;
  //final String description;

  MediaModel({required this.videoId, required this.title, required this.url});

  factory MediaModel.fromJson(Map<String, dynamic> json) {
    return MediaModel(
      videoId: json['videoId'],
      title: json['title'],
      url: json['url'],
      //description: json['description'],
    );
  }
}
