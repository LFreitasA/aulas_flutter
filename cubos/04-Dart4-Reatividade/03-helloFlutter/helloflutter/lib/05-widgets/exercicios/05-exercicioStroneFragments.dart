import 'dart:ui';

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
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/fundo.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Clique no fragmento para ele virar a Joia do destino",
              style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 25),
            ),
            Center(
              child: MudarImagem(),
            ),
          ],
        ),
      ),
    );
  }
}

class MudarImagem extends StatefulWidget {
  const MudarImagem({super.key});

  @override
  State<MudarImagem> createState() => _MudarImagemState();
}

int fragments = 0;
int pieces = 0;
int stone = 0;
String frase = "Fragments: $fragments";

String clicarNaTela() {
  if (stone > 0) {
    return "assets/Joia.png";
  } else if (pieces > 0) {
    return "assets/peca.png";
  } else {
    return "assets/fragmento.png";
  }
}

var imagem = clicarNaTela();

class _MudarImagemState extends State<MudarImagem> {
  aumentarContador() {
    fragments++;
    if (fragments == 10) {
      if (pieces > 8) {
        fragments = 0;
        pieces = 0;
        stone++;
      } else {
        fragments = 0;
        pieces++;
      }
    }
    print("Stones:$stone\nPieces: $pieces\nFragments: $fragments");
    setState(() {
      fragments;
      imagem = clicarNaTela();
      frase = textoDinamico();
    });
  }

  diminuirContador() {
    fragments--;
    print("Stones:$stone\nPieces: $pieces\nFragments: $fragments");
    setState(() {
      fragments;
      frase = textoDinamico();
      imagem = clicarNaTela();
    });
  }

  textoDinamico() {
    if (stone > 0) {
      return "Stones:$stone\nPieces: $pieces\nFragments: $fragments";
    } else if (pieces > 0) {
      return "Pieces: $pieces\nFragments: $fragments";
    } else {
      return "Fragments: $fragments";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap: aumentarContador,
        child: Image.asset(clicarNaTela()),
      ),
      Text(
        frase,
        style: const TextStyle(
            decoration: TextDecoration.none, color: Colors.white, fontSize: 30),
      )
    ]);
  }
}
