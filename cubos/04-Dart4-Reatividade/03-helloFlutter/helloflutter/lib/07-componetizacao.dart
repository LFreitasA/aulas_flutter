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
            cor: Colors.red,
            altura: 300,
          ),
          ColorFullContainer(cor: Colors.green, altura: 140),
        ],
      ),
    );
  }
}

//Componente, todo componente deve ter estado

class ColorFullContainer extends StatelessWidget {
  final Color cor;
  double altura;

  ColorFullContainer({super.key, required this.cor, required this.altura});

  @override
  Widget build(BuildContext context) {
    return Container(height: altura, width: 500, color: cor);
  }
}
