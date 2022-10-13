import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

var cor = "blue";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        color: corDoFundo(cor),
        child: Center(
          child: Text('Hello fluter',
              style: TextStyle(color: Colors.white, fontSize: 60)),
        ),
      ),
    );
  }
}

dynamic corDoFundo(cor) {
  if (cor == "blue") {
    cor = Colors.blue;
  } else {
    cor = Colors.black;
  }
  return cor;
}
