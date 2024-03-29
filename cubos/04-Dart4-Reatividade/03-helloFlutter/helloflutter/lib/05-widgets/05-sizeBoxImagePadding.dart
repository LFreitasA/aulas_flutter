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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
              height: 300,
              width: 300,
              child: Text("height: 300,\n width: 300")),
          Image.network(
            'https://www.google.pt/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png',
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Image.asset('assets/26.png'),
            ),
          ),
        ],
      ),
    );
  }
}
