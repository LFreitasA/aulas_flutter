import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MoodyGradient());
  }
}

class MoodyGradient extends StatelessWidget {
  const MoodyGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment(0.0, 0.1),
          colors: <Color>[
            Color.fromARGB(255, 94, 108, 241),
            Color.fromARGB(255, 163, 4, 211),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      child: Container(child: cardComText()),
    );
  }
}

dynamic cardComText() {
  return (Center(
      child: Card(
    child: Container(
      height: 40,
      width: 120,
      child: Text(
        "Flutterr",
        style: TextStyle(fontSize: 32, color: Color.fromARGB(255, 230, 8, 8)),
      ),
    ),
  )));
}
