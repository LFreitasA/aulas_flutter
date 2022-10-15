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
        child: MeuContador(),
      ),
    );
  }
}

class MeuContador extends StatefulWidget {
  const MeuContador({super.key});

  @override
  State<MeuContador> createState() => _MeuContadorState();
}

class _MeuContadorState extends State<MeuContador> {
  int cooperCoin = 0;
  int silverCoin = 0;
  int goldCoin = 0;
  String mensagem = "ola clique na tela";
  void onTap1() {
    if (cooperCoin == 9) {
      if (silverCoin == 9) {
        cooperCoin = 0;
        silverCoin = 0;
        goldCoin++;
      } else {
        cooperCoin = 0;
        silverCoin++;
      }
    } else {
      cooperCoin++;
    }

    setState(() {
      mensagem = "Cooper: $cooperCoin\nSilver: $silverCoin\nGold: $goldCoin\n";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 83, 8, 245),
      child: Center(
        child: GestureDetector(
          onTap: onTap1,
          child: Text(
            mensagem,
            style:
                TextStyle(color: Colors.red, decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
