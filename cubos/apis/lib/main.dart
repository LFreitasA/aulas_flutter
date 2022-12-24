import 'package:apis/consumo_api_dart_01.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    dioRequest();
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Text("data"),
          Text(imagemDoDia == "" ? "Ola" : imagemDoDia),
          Image.network(imagemDoDia)
        ],
      )),
    );
  }
}
