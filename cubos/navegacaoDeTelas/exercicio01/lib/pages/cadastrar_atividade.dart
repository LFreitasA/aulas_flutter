import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../classes/atividades.dart';
import '../data/adicionar_tarefa.dart';

class CadastrarAtividade extends StatelessWidget {
  CadastrarAtividade({super.key});
  TextEditingController nome = TextEditingController();
  TextEditingController descricao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("Nova atividade"),
            TextFormField(
              controller: nome,
              decoration: InputDecoration(label: Text("Nova atividade")),
            ),
            SizedBox(
              height: 32,
            ),
            TextFormField(
              minLines: 6,
              maxLines: 8,
              controller: descricao,
              decoration: InputDecoration(
                label: Text("Descrição"),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                      print("object");
                    },
                    child: Text("Cancelar")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Atividades atividade =
                          Atividades(nome.text, descricao.text, DateTime.now());
                      print(atividade);
                      adicionarAtividade(atividade);
                      print(minhasAtividades);
                    },
                    child: Text("Salvar")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
