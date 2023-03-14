import 'dart:io';

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:layout_adaptativo/aula/custom_dialog_factory.dart';
import 'package:layout_adaptativo/aula/factories/app_factory.dart';
import 'package:layout_adaptativo/aula/factories/platform_buton_factory.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String dispositivo = "IOS";
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
    final alturaTela = MediaQuery.of(context).size.height;
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaDisponivel = alturaTela - AppBar().preferredSize.height;
    print(alturaTela);
    print(larguraTela);
    print(alturaDisponivel);
    return Scaffold(
      appBar: widget.platform == "IOS"
          ? null
          : AppBar(
              title: const Text("Meu App"),
            ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          makePlatformButton(
            platform: widget.platform,
            title: "Teste botao ${widget.platform}",
            onPressed: () {
              print("${widget.platform}");
              getCustomDialog(platform: widget.platform).show(context);
            },
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: alturaDisponivel * 0.9,
            width: larguraTela * 0.2,
            color: Color.fromARGB(200, 50, 255, 33),
          )
        ],
      ),
    );
  }
}
