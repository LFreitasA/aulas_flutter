import 'package:flutter/material.dart';
import 'package:gerenciadodereceitas/classes/strings.dart';

import 'cadastrar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(Strings.nomeAppBarWelcomePage),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(Strings.welcomeMessage),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Cadastrar()));
                    },
                    child: const Text("Cadastrar")),
                const TextButton(onPressed: null, child: Text("Logar"))
              ],
            )
          ],
        ));
  }
}
