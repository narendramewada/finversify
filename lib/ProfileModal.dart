class ProfileModal {
  final String videoId;
  final String name;
  final String email;
  final String mobile;

  ProfileModal({required this.videoId, required this.name, required this.email, required this.mobile});

  factory ProfileModal.fromJson(Map<String, dynamic> json) {
    return ProfileModal(
      videoId: json['videoId'],
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
    );
  }
}
