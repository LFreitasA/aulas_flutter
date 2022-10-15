import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.yellow,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
