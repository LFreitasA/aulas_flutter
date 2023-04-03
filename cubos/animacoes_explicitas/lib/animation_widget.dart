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
          body: Center(
            child: Stack(
              children: [
                LightTransition(
                  animation: _animationController,
                )
              ],
            ),
          ),
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

class LightTransition extends AnimatedWidget {
  final AnimationController animation;
  const LightTransition({super.key, required this.animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0,
            animation.value
          ],
              colors: const [
            Color.fromARGB(255, 17, 198, 230),
            Colors.transparent
          ])),
      height: 400,
      width: 400,
    );
  }
}
