import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biblioteca de animações',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animações'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double altura = 100;
  double largura = 100;
  bool boleano = false;
  Color cor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            boleano = !boleano;
            cor = boleano ? Colors.green : Colors.red;
            altura = boleano ? 225 : 100;
            largura = boleano ? 225 : 100;
          });
        },
        child: Text("Animar"),
      ),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: GestureDetector(
        onTap: () {
          setState(() {
            boleano = !boleano;
            cor = boleano
                ? Color.fromARGB(255, 7, 142, 220)
                : Color.fromARGB(255, 132, 8, 93);
            altura = boleano ? 225 : 100;
            largura = boleano ? 225 : 100;
          });
        },
        child: AnimatedContainer(
          height: altura,
          width: largura,
          decoration: BoxDecoration(
              color: cor,
              borderRadius: boleano ? BorderRadius.circular(500) : null),
          duration: Duration(seconds: 5),
          curve: Curves.bounceIn,
        ),
      )),
    );
  }
}
