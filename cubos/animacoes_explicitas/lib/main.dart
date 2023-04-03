import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this)
          ..repeat();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Center(child: Lottie.asset('assets/loader.zip')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (_animationController.isAnimating) {
                _animationController.stop();
              } else {
                _animationController.forward();
              }
            },
            child:
                Text(_animationController.isAnimating ? "Pause" : "Continue"),
          ),
        ));
  }
}
