import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/03AulaReatividade/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Container(height: 56, width: 500, color: Colors.blue),
          ColorFullContainer(
            cor: Colors.amberAccent,
            altura: 200,
            texto: "Ola",
          ),
          ColorFullContainer(
            cor: Colors.green,
            altura: 140,
            texto: "tudo bem?",
          ),
        ],
      ),
    );
  }
}

//Componente, todo componente deve ter estado

class ColorFullContainer extends StatelessWidget {
  final Color cor;
  double altura;
  String texto;

  ColorFullContainer(
      {super.key, required this.cor, required this.altura, this.texto = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: 500,
      color: cor,
      child: Text(texto,
          style: TextStyle(
              color: Colors.black,
              fontSize: 50,
              decoration: TextDecoration.none)),
    );
  }
}
