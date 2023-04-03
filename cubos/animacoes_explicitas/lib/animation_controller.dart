import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late AnimationController _animation;

  @override
  void initState() {
    _animation =
        AnimationController(duration: Duration(seconds: 20), vsync: this)
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(),
          body: Center(
            child: RotationTransition(
                turns: _animation, child: Image.asset('assets/galaxy.png')),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if (_animation.isAnimating) {
                _animation.stop();
              } else {
                _animation.forward();
              }
            },
            child: Text(_animation.isAnimating ? "Pause" : "Continue"),
          ),
        ));
  }
}
