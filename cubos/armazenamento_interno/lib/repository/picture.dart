import 'package:flutter/foundation.dart';

class Picture {
  String date;
  String explanation;
  String hdurl;
  String title;
  String url;

  Picture(
      {required this.date,
      required this.explanation,
      required this.hdurl,
      required this.title,
      required this.url});

  factory Picture.fromMap(Map<String, dynamic> data) {
    return Picture(
        date: data['date'],
        explanation: data['explanation'],
        hdurl: data['hdurl'],
        title: data['title'],
        url: data['url']);
  }
}
