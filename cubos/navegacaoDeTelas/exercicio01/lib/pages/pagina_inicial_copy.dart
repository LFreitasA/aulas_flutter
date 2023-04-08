import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

class PaginaInicial2 extends StatelessWidget {
  const PaginaInicial2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text("Minhas atividades"),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '\cadastrar');
          },
          child: Text("Novas atividades"),
        )
      ],
    ));
  }
}
