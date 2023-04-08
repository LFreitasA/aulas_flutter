import 'package:exercicio01/pages/pagina_inicial_copy.dart';
import 'package:flutter/material.dart';

import 'pages/cadastrar_atividade.dart';
import 'pages/pagina_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      routes: {
        '/': (context) => PaginaInicial(),
        '/cadastrar': (context) => CadastrarAtividade(),
        '/sobre': (context) => PaginaInicial2()
      },
    );
  }
}

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  final _pages = <Widget>[
    const PaginaInicial(), // 0
    CadastrarAtividade(), // 1
    const PaginaInicial2() // 2
  ];

  Widget _actualPage = PaginaInicial();

  final _str = settings.name!.split('/').last;
  if (_str.isNotEmpty) {
    final value = int.parse(settings.name!.split('/').last);

    _actualPage = _pages[value];
  }
  return MaterialPageRoute<void>(
    builder: (context) => _actualPage,
  );
}
