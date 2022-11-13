import 'package:agendatelefonica/resources/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: currentThemeMode,
      theme: PhoneBookTheme.light,
      darkTheme: PhoneBookTheme.dark,
      home: ConstruindoATela(
        onThemePressed: toggleThemeMode,
      ),
    );
  }
}

class Funcionalidade {
  Funcionalidade({required this.nome, required this.icone});
  String nome;
  Icon icone;
}

final listaDeFuncionalidades = [
  Funcionalidade(nome: "Luzes", icone: Icon(Icons.light)),
  Funcionalidade(nome: "Temperatura", icone: Icon(Icons.cloud)),
  Funcionalidade(nome: "Lavadora", icone: Icon(Icons.wash)),
  Funcionalidade(nome: "Seguranca", icone: Icon(Icons.security)),
  Funcionalidade(nome: "Wifi", icone: Icon(Icons.wifi)),
  Funcionalidade(nome: "Televisor", icone: Icon(Icons.tv)),
];

funcionalidades(nome, icone) {
  return Container(
    color: Colors.grey,
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              icone,
              color: Colors.indigo,
              size: 90,
            ),
          ),
          Text(
            nome,
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.w800),
          )
        ]),
  );
}

class ConstruindoATela extends StatefulWidget {
  ConstruindoATela({super.key, required this.onThemePressed});

  final VoidCallback onThemePressed;

  @override
  State<ConstruindoATela> createState() => _ConstruindoATelaState();
}

class _ConstruindoATelaState extends State<ConstruindoATela> {
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool isSwitched = false;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.home_outlined,
                    size: 60,
                    color: Colors.indigo,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Sweet Home",
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "O que gostaria de monitorar?",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: listaDeFuncionalidades.length,
                  gridDelegate: gridDelegate,
                  itemBuilder: ((context, index) {
                    return ConstrucaoDoGrid();
                  }),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("data"),
                  Switch.adaptive(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = !isSwitched;
                        value = isSwitched;
                      });
                      print("isSwitched$isSwitched");
                      print("value$value");
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ConstrucaoDoGrid extends StatelessWidget {
  const ConstrucaoDoGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: GridTile(
          child: Stack(
        children: [
          funcionalidades("luzes", Icons.lightbulb_outline),
        ],
      )),
    );
  }
}
