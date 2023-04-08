class StarModel {
  final int id;
  final String explanation;
  final String hdurl;
  final String title;

  StarModel(
      {required this.explanation,
      required this.hdurl,
      required this.title,
      required this.id});

  StarModel.fromJson(Map<String, dynamic> data, this.id)
      : explanation = data['explanation'],
        hdurl = data['hdurl'],
        title = data['title'];

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['explanation'] = this.explanation;
    data['hdurl'] = this.hdurl;
    data['title'] = this.title;
    data['id'] = this.id;
    return data;
  }
}
