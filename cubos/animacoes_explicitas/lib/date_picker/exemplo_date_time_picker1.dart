import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MaterialApp(
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
    return newMethod(
      context,
    );
  }

  MaterialApp newMethod(
    BuildContext context,
  ) {
    DateTime? dataSelecionada;
    String? dataSelecionadaPorExtenso;
    return MaterialApp(
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: const [Locale("pt", "BR")],
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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

                  if (data != null) {
                    dataSelecionadaPorExtenso =
                        DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_Br')
                            .format(data);

                    // ignore: use_build_context_synchronously
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      builder: (context, child) => Theme(
                          data: ThemeData().copyWith(
                              colorScheme: const ColorScheme.dark(
                                primary:
                                    Colors.pink, // altera a bola de seleção
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

                    if (time != null) {
                      dataSelecionada = DateTime(data.year, data.month,
                          data.day, time.hour, time.minute);
                    }

                    print(dataSelecionada);
                    print(dataSelecionadaPorExtenso);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
