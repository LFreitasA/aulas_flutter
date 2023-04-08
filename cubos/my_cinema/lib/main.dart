import 'package:flutter/material.dart';
import 'package:my_cinema/app/components/poltronas.dart';

void main() {
  runApp(MyApp());
}

int quantidadeDePoltronas = 15;
int quantidadeDeLinhasDePoltronas = 7;
int lacunaDoCorredor = 3;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my cinema"),
        ),
        body: CadastrarSala(),
        /*  body: ListarPoltronas(
          quantidadeDeLinhasDePoltronas: quantidadeDeLinhasDePoltronas,
          quantidadeDePoltronas: quantidadeDePoltronas,
          lacunaDoCorredor: lacunaDoCorredor,
        ),*/
      ),
    );
  }
}

class CadastrarSala extends StatelessWidget {
  const CadastrarSala({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController? nomeSalaController;
    TextEditingController poltronasColunas;
    TextEditingController poltronasLinhas;
    TextEditingController corredor;
    return ListView(
      children: [
        Text("Cadastre sua sala"),
        TextFieldPersonalizado(
          nomeDoCampo: "Nome da sala",
          dicaDoCampo: "Informe o nome da sala!",
          control: nomeSalaController,
        ),
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  print("nomeSalaController");
                  print(nomeSalaController);
                },
                child: Text("Cadastrar"))
          ],
        )
      ],
    );
  }
}

class TextFieldPersonalizado extends StatelessWidget {
  TextFieldPersonalizado(
      {super.key,
      required this.nomeDoCampo,
      required this.dicaDoCampo,
      required this.control});
  TextEditingController? control;
  final String nomeDoCampo;
  final String? dicaDoCampo;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: control,
      cursorColor: Colors.red,
      decoration: InputDecoration(
        /* enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),*/
        label: Text(
          nomeDoCampo,
          style: TextStyle(color: Colors.black),
        ),
        hintText: dicaDoCampo,
        focusColor: Colors.amber,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber),
        ),
      ),
      onChanged: (value) {
        print(value);
      },
    );
  }
}
