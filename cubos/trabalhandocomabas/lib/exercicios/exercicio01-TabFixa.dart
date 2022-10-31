import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  App({super.key});
  final tabs = [
    Tab(child: Text("CATIOROS")),
    Tab(child: Text("GATINEOS")),
    Tab(child: Text("PASSARINEOS")),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
              bottom: TabBar(
                tabs: tabs,
              ),
              leading: const Icon(
                Icons.pets,
                color: Colors.red,
                shadows: [
                  Shadow(color: Colors.white, blurRadius: 1),
                ],
              ),
              foregroundColor: Color.fromARGB(255, 255, 253, 253),
              title: const Text('Meu Pet: A loja do seu pet'),
              shadowColor: Colors.green),
          body: MinhaTab(),
        ),
      ),
    );
  }
}

class Telas {
  const Telas(this.nomeDaTela);
  final String nomeDaTela;
}

class MinhaTab extends StatelessWidget {
  const MinhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        const Center(
          child: Text("Cachorro"),
        ),
        const Center(
          child: Text("GATO"),
        ),
        const Center(
          child: Text("Passaro"),
        ),
      ],
    );
  }
}
