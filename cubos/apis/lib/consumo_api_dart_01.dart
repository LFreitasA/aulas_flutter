import 'dart:convert';
import 'dart:io';

import 'package:apis/apod.dart';
import 'package:apis/apod_repository.dart';
import 'package:dio/dio.dart';

final url = "https://api.nasa.gov/planetary/apod";
String imagemDoDia = '';

void vanillaRequest() async {
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse(url));
  final response = await request.close();
  response.transform(Utf8Decoder()).listen((event) => print(event));
}

Future<Apod> dioRequest() async {
  final dio = Dio();
  final response = await dio.get(url, queryParameters: {'api_key': "DEMO_KEY"});
  // print(response);
  imagemDoDia = response.data["url"];
  //print(response.data["url"]);

  return Apod.fromMap(response.data);
}

void main() async {
  //final apod = await dioRequest();
  //print(apod);
  final apodRepository = ApodRepository();
  final apodDay = await apodRepository.getFromToday();
  print("Do dia");
  print(apodDay);

  final apodSemana = await apodRepository.getFromWeek();
  print("Da semana");
  print(apodSemana);
}
