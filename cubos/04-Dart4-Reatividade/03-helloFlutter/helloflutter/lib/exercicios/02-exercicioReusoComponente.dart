import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          color: Color.fromARGB(255, 0, 252, 252),
          child: Column(
            children: [
              MeuComponente(
                cor: Colors.red,
                altura: 180,
                largura: 23,
              ),
              MeuComponente(
                cor: Colors.green,
                altura: 90,
                largura: 200,
              ),
              MeuComponente(cor: Colors.blue, altura: 180, largura: 100),
            ],
          )),
    );
  }
}

class MeuComponente extends StatelessWidget {
  final Color cor;
  double altura;
  double largura;

  MeuComponente(
      {super.key,
      required this.cor,
      required this.altura,
      required this.largura});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      height: altura,
      width: largura,
    );
  }
}
