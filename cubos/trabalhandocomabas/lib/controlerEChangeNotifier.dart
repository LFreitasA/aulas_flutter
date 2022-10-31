import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final controller = CounterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterWidget(controller: controller),
          ElevatedButton(
              onPressed: controller.increment, child: Icon(Icons.add)),
        ],
      )),
    );
  }

  void dispose() {
    super.dispose();
    controller.dispose();
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key, required this.controller});

  final CounterController controller;

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  String count = '0';

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {
        count = widget.controller.count.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("Numero de clicks $count ");
  }
}

class CounterController extends ChangeNotifier {
  int _counter = 0;
  int get count => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }
}
