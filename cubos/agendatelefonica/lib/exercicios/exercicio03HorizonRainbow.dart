import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("VLAVAAV Horizontal"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return DesenhandoATela();
          },
        ),
      ),
    );
  }
}

class DesenhandoATela extends StatelessWidget {
  const DesenhandoATela({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerComCor(
          text: "Vermelho",
          cor: Colors.red,
        ),
        ContainerComCor(
          text: "Laranja",
          cor: Colors.orange,
        ),
        ContainerComCor(
          text: "Amarelo",
          cor: Colors.yellow,
        ),
        ContainerComCor(
          text: "Verde",
          cor: Colors.green,
        ),
        ContainerComCor(
          text: "Azul",
          cor: Colors.blue,
        ),
        ContainerComCor(
          text: "Anil",
          cor: Colors.indigo,
        ),
        ContainerComCor(
          text: "Violeta",
          cor: Colors.purple,
        ),
      ],
    );
  }
}

class ContainerComCor extends StatelessWidget {
  ContainerComCor({Key? key, required this.text, required this.cor})
      : super(key: key);

  String text;
  Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        width: 100,
        height: 900,
        child: RotatedBox(
          quarterTurns: 3,
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ),
        color: cor);
  }
}
