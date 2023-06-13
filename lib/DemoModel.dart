class DemoModel {
  final String userId;
  final String company_logo;
  final String title;
  final String description;

  DemoModel({required this.userId, required this.company_logo, required this.title,required this.description});

  factory DemoModel.fromJson(Map<String, dynamic> json) {
    return DemoModel(
      company_logo: json['company_logo'],
      userId: json['id'],
      title: json['company_name'],
      description: json['description'],
    );
  }
}
