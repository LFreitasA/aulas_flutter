import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const CupertinoApp(
    localizationsDelegates: [
      GlobalWidgetsLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
    ],
    supportedLocales: [Locale("pt", "BR")],
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.date_range),
              onPressed: () async {
                final now = DateTime.now();
                final dataInicial = DateTime.now();
                final primeiraData = DateTime.now();
                final dataFinal = DateTime(now.year + 1);
                final data = await showDatePicker(
                  context: context,
                  initialDate: dataInicial,
                  firstDate: primeiraData,
                  lastDate: dataFinal,
                  locale: Localizations.localeOf(context),
                  builder: (context, child) => Theme(
                      data: ThemeData().copyWith(
                          colorScheme: const ColorScheme.dark(
                            primary: Colors.pink, // altera a bola de seleção
                            onPrimary: Colors
                                .black, // altera a cor de fundo da bola de seleção
                            surface: Colors.green, // cor do header
                            onSurface: Colors.cyan, // cor dos textos
                          ),
                          dialogBackgroundColor:
                              Colors.blueGrey), // Altera a cor do fundo
                      child: child!),
                  //cancelText: "Botao cancelar",
                  //confirmText: "Botao confirmar"
                );
                print(data);
                print(data!.day);
                print(data.month);
                print(data.year);
                print(data.weekday);
              },
            ),
          ],
        ),
      ),
    );
  }
}
