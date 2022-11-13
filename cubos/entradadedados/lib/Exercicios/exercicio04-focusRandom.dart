import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text("Focus Random")),
        ),
        body: CriandoATela(),
      ),
    );
  }
}

class CriandoATela extends StatefulWidget {
  const CriandoATela({super.key});

  @override
  State<CriandoATela> createState() => _CriandoATelaState();
}

class _CriandoATelaState extends State<CriandoATela> {
  int numeroSorteado = 0;
  final primeiraLinha = FocusNode();
  final segundaLinha = FocusNode();
  final terceiraLinha = FocusNode();
  final quartaLinha = FocusNode();
  final quintaLinha = FocusNode();

  numeroAleatorio(numeroSorteado) {
    switch (numeroSorteado) {
      case 0:
        {
          return primeiraLinha.requestFocus();
        }
      case 1:
        {
          return segundaLinha.requestFocus();
        }
      case 2:
        {
          return terceiraLinha.requestFocus();
        }
      case 3:
        {
          return quartaLinha.requestFocus();
        }
      case 4:
        {
          return quintaLinha.requestFocus();
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Center(
            child: Text(
              "Sorteado: ${numeroSorteado + 1}",
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
            ),
          ),
          TextFormField(
            focusNode: primeiraLinha,
            cursorColor: Colors.green,
            decoration: InputDecoration(),
          ),
          TextFormField(
            focusNode: segundaLinha,
            cursorColor: Colors.green,
          ),
          TextFormField(
            cursorColor: Colors.green,
            focusNode: terceiraLinha,
          ),
          TextFormField(
            cursorColor: Colors.green,
            focusNode: quartaLinha,
          ),
          TextFormField(
            cursorColor: Colors.green,
            focusNode: quintaLinha,
          ),
          Container(
            width: 899,
            child: Card(
              color: Colors.green,
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      numeroSorteado = Random().nextInt(5);
                    });
                    numeroAleatorio(numeroSorteado);
                  },
                  child: Text(
                    "Focus Random",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }

  void dispose() {
    primeiraLinha.dispose();
    segundaLinha.dispose();
    terceiraLinha.dispose();
    quartaLinha.dispose();
    quintaLinha.dispose();
    super.dispose();
  }
}
