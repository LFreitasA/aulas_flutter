import 'dart:math';

import 'package:animacoes_implicitas/animacoes_implicitas_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca de animações',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "title"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isNormal = true;
  Color cor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isNormal = !isNormal;
          });
        },
        child: Text("Animar"),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextAnimation(isNormal: isNormal),
          TweenAnimationBuilder(
            curve: Curves.linear,
            tween: Tween<double>(begin: 1, end: 12),
            // tween: ColorTween(begin: Colors.blue, end: Colors.red),
            duration: Duration(seconds: 100),
            builder: (context, double rotation, child) {
              return Transform.rotate(
                angle: -pi / rotation,
                child: child,
              );
            },
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          TweenAnimationBuilder(
            curve: Curves.linear,
            tween: ColorTween(begin: Colors.blue, end: Colors.red),
            duration: Duration(seconds: 10),
            builder: (context, Color? color, child) {
              return Container(
                color: color,
                height: 100,
                width: 100,
              );
            },
          ),
        ],
      ),
    );
  }
}
