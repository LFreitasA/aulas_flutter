import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Card(
        child: Center(
          child: Text("OKs"),
        ),
      ),
    );
  }
}

/*class app {
      const MaterialApp(
      home: Card(
        child: Center(
          child: Text("Buenas"),
        ),
      ),
    ),
}*/