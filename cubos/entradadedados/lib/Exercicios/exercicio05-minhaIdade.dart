import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Minha idade",
          ),
          backgroundColor: Colors.red,
        ),
        body: minhaIdade(),
      ),
    );
  }
}

class minhaIdade extends StatefulWidget {
  const minhaIdade({
    Key? key,
  }) : super(key: key);

  @override
  State<minhaIdade> createState() => _minhaIdadeState();
}

class _minhaIdadeState extends State<minhaIdade> {
  bool informouIdade = false;
  var selectedBirthDate;
  String ano = "";
  int anoAtual = 0;
  int anoNascimento = 0;
  int idade = 0;

  void showBirthDatePicker() {
    final now = DateTime.now();
    final eighteenYearsAgo = DateTime(now.year - 18, now.month, now.day);
    showDatePicker(
            cancelText: "Cancelar",
            helpText: "Selecione sua data de nascimento",
            confirmText: "Confirmar",
            context: context,
            initialDate: now,
            firstDate: DateTime(1900),
            lastDate: now,
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            initialDatePickerMode: DatePickerMode.year)
        .then((selectedDate) {
      selectedBirthDate = selectedDate;
      print(selectedBirthDate);
      print(selectedBirthDate.year);
      print(now);
      print(now.year);
      anoAtual = int.parse(now.year.toString());
      anoNascimento = int.parse(selectedBirthDate.year.toString());
      print(anoNascimento);
      setState(() {
        idade = anoAtual - anoNascimento;
      });
      informouIdade = true;
      print("idade=${idade}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: informouIdade
                ? Text(
                    "$idade anos de vida",
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  )
                : const Text(
                    "Data invalida",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
          ),
          TextButton(
              onPressed: () {
                showBirthDatePicker();
              },
              child: SizedBox(
                width: 120,
                height: 40,
                child: Card(
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      "Calendario",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ))
        ]);
  }
}
