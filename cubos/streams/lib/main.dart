import 'package:flutter/material.dart';
import 'package:streams/classes/app_colors.dart';

import 'calculadora.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundAppBar,
        ),
        backgroundColor: AppColors.backgroundApp,
        body: Calculadora(),
      ),
    );
  }
}
