class ResultsModel {
  final String? image;
  final String? title;
  final String? description;
  final dynamic link;
  ResultsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.link,
  });
  factory ResultsModel.fromJson(json) {
    return ResultsModel(
      image: json['image_url'],
      title: json['title'],
      description: json['description'],
      link: json['link'],
    );
  }
}
