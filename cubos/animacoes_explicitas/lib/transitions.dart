import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation<RelativeRect> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    final _curves =
        CurvedAnimation(parent: _animationController, curve: Curves.linear);

    _animation = RelativeRectTween(
            end: RelativeRect.fromLTRB(200.0, 200.0, 200.0, 200.0),
            begin: RelativeRect.fromLTRB(20.0, 20.0, 20.0, 20.0))
        .animate(_curves)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _animationController.forward();
        }
      });

    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Controller'),
      ),
      body: Center(
        child: Stack(children: [
          PositionedTransition(
              rect: _animation,
              child: const Image(
                height: 300.0,
                width: 300.0,
                image: AssetImage('assets/galaxy.png'),
              )),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_animationController.isAnimating) {
            _animationController.stop();
          } else {
            _animationController.forward();
          }
        },
        child: Text('Pause'),
      ),
    );
  }
}
