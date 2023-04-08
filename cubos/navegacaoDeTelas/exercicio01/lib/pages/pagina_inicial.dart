import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';

import '../classes/atividades.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas atividades"),
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cadastrar');
              },
              child: Text("Novas atividades"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Atividade"), Text("Data")],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: minhasAtividades.length,
                  itemBuilder: (context, index) => Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(minhasAtividades[index].nome),
                              Text(minhasAtividades[index].dataFormatada())
                            ],
                          )
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
