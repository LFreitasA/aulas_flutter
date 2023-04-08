import 'package:flutter/material.dart';
import 'package:gerenciadodereceitas/classes/icones.dart';
import 'package:gerenciadodereceitas/classes/strings.dart';

import 'home_page.dart';

class Cadastrar extends StatelessWidget {
  const Cadastrar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.paginaDeCadastroTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          contrutorDeBotes(
              textName: Strings.primeiroNome, icone: Icones.iconeEscuro),
          contrutorDeBotes(
              textName: "Strings.primeiroNome, icone: Icones.iconeEscuro"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextButton(onPressed: null, child: Text("Cadastrar")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: const Text("Cancelar"))
            ],
          )
        ]),
      ),
    );
  }

  TextFormField contrutorDeBotes(
      {required String textName, IconButton? icone}) {
    return TextFormField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: textName,
        suffixIcon: icone,
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
    );
  }
}
