import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CriacaoDaTela(),
    );
  }
}

class CriacaoDaTela extends StatefulWidget {
  const CriacaoDaTela({
    Key? key,
  }) : super(key: key);

  @override
  State<CriacaoDaTela> createState() => _CriacaoDaTelaState();
}

class _CriacaoDaTelaState extends State<CriacaoDaTela> {
  final controler = TextEditingController();
  void showSignUpDialog(BuildContext context) {
    String mensagem = validacaoDaIdade();
    showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Center(child: Text(mensagem)),
            actions: [
              Center(
                child: TextButton(
                    onPressed: () => Navigator.of(context).pop(true),
                    child: Text("OK")),
              ),
            ],
          );
        });
  }

  String validacaoDaIdade() {
    String mensagem = "";
    idade = int.parse(controler.text);
    if (idade >= 16) {
      if (idade < 18 || idade > 65) {
        mensagem = "Voto facultativo";
      } else {
        mensagem = "Voto obrigatorio!";
      }
    } else {
      mensagem = "Nao pode votar";
    }
    return mensagem;
  }

  int idade = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posso votar?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(children: [
          TextFormField(
            controller: controler,
          ),
          TextButton(
              onPressed: () {
                showSignUpDialog(context);
              },
              child: Container(
                  width: 150,
                  child: Card(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                            child: Text(
                          "Verificar idade",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )),
                      ))))
        ]),
      ),
    );
  }
}
