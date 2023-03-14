import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:layout_adaptativo/aula/factories/app_factory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String dispositivo = "Android";
    if (kIsWeb) {
      print("object");
    } else {
      print("n eh web");
    }
    return getApp(
      platform: dispositivo,
      title: "teste",
      home: MyHomePage(platform: dispositivo),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.platform});
  String platform;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(155, 5, 167, 236),
      appBar: widget.platform == "IOS"
          ? null
          : AppBar(
              title: const Text("Meu App"),
            ),
      body: Center(
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Container(
              height:
                  (constraints.maxHeight - AppBar().preferredSize.height) * 0.3,
              width: constraints.maxWidth * 0.1,
              color: Color.fromARGB(199, 255, 33, 33),
            );
          } else {
            return Container(
              height:
                  (constraints.maxHeight - AppBar().preferredSize.height) * 0.3,
              width: constraints.maxWidth * 0.5,
              color: Color.fromARGB(199, 255, 33, 33),
            );
          }
        }),
      ),
    );
  }
}
