import 'package:app_my_games/app/components/slider.dart';
import 'package:app_my_games/app/utils/strings.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.platform});
  final platform;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: widget.platform == "IOS"
            ? null
            : AppBar(
                title: Text(MyStrings.nome),
              ),
        body: const SliderImage());
  }
}
