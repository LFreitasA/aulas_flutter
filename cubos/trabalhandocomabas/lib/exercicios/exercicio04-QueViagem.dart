import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Que viagem! Turismo"),
            foregroundColor: Colors.blue,
            backgroundColor: Colors.amber,
            bottom: TabBar(tabs: tabs),
          ),
          body: MinhasTelas(),
        ),
      ),
    );
  }
}

final tabs = [
  Tab(
    icon: Icon(
      Icons.flight,
      color: Colors.blue,
    ),
    child: Text(
      "VOOS",
      style: TextStyle(color: Colors.blue),
    ),
  ),
  Tab(
    icon: Icon(
      Icons.shopping_bag,
      color: Colors.blue,
    ),
    child: Text(
      "PASSEIOS",
      style: TextStyle(color: Colors.blue),
    ),
  ),
  Tab(
    icon: Icon(
      Icons.explore,
      color: Colors.blue,
    ),
    child: Text(
      "MAPA",
      style: TextStyle(color: Colors.blue),
    ),
  ),
];

class MinhasTelas extends StatelessWidget {
  const MinhasTelas({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [Voos(), Passeios(), Mapa()],
    );
  }
}

class Voos extends StatelessWidget {
  const Voos({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Text(
            "PARTIDA",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Abril 25, 2022",
              style: TextStyle(fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    children: [
                      Text(
                        "GRU",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Guarulhos, Brasil",
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                ),
                Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: Icon(
                    Icons.flight,
                    textDirection: TextDirection.ltr,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Text("OPO",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w600)),
                      Text(
                        "Porto, Portugal",
                        style: TextStyle(fontSize: 8),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Passeios extends StatelessWidget {
  const Passeios({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Pontos turisticos"),
            Text("Ponte dom Luis I"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network('https://i.imgur.com/JCelTKF.jpeg'),
            ),
            Text("texto"),
            Text("texto "),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network('https://i.imgur.com/MGuco6w.jpeg'),
            ),
            Text("texto"),
            Text("texto "),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network('https://i.imgur.com/4iml7h5.jpeg'),
            ),
            Text("texto"),
            Text("texto "),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.network('https://i.imgur.com/4iml7h5.jpeg'),
            ),
          ],
        ),
      ),
    );
  }
}

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.network("https://i.imgur.com/qVbQ7ho.png"),
          ],
        ),
      ),
    );
  }
}
