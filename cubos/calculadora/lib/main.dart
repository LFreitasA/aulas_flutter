import 'package:calculadora/theme.dart';
import 'package:flutter/material.dart';

import 'display.dart';
import 'numberButton.dart';
import 'OperadorButton.dart';

const appName = "Calculador Simples";
void main() => runApp(const App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeMode currentThemeMode = ThemeMode.light;
  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculadora simples",
        debugShowCheckedModeBanner: false,
        //debugShowMaterialGrid: true, coloca quadriculado na tela para ver alinhamento
        themeMode: currentThemeMode, //muda o thema para claro ou escuros
        theme: SimpleCalculatorTheme.light,
        darkTheme: SimpleCalculatorTheme.dark,
        home: SimpleCalculator(
          onThemeModePressed: toggleThemeMode,
        ));
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key, required this.onThemeModePressed});

  final VoidCallback onThemeModePressed;

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  static const operadores = ["*", "-", "+"];

  String display = '0';
  String firstNumber = '';
  String secondNumber = '';
  String operador = '';
  double progress = 0;

  void insert(String char) {
    if (char == '0') {
      if (operador.isEmpty && firstNumber.isEmpty) return;
      if (operador.isNotEmpty && secondNumber.isEmpty) return;
    }
    if (operadores.contains(char)) {
      if (firstNumber.isEmpty) {
        firstNumber = "0";
      }
      operador = char;
    } else {
      if (operador.isEmpty) {
        firstNumber += char;
      } else {
        secondNumber += char;
      }
    }

    setState(() {
      if (operador.isEmpty) {
        display = firstNumber;
        progress = 0.33;
      } else {
        if (secondNumber.isEmpty) {
          display = "$firstNumber $operador ";
          progress = 0.66;
        } else {
          display = "$firstNumber $operador $secondNumber";
          progress = 1;
          disableOperadorButton = true;
        }
      }
    });
  }

  bool disableOperadorButton = false;

  void clear() {
    setState(() {
      firstNumber = '';
      secondNumber = '';
      operador = '';
      display = "0";
      progress = 0;
      disableOperadorButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(appName),
        actions: [
          IconButton(
              onPressed: widget.onThemeModePressed,
              icon: Icon(theme.brightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: FloatingActionButton(
          onPressed: clear,
          child: const Text("C"),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 3, child: Display(display: display)),
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: LinearProgressIndicator(value: progress),
          )),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '7', onNumberPressed: insert),
                NumberButton(number: '8', onNumberPressed: insert),
                NumberButton(number: '9', onNumberPressed: insert),
                OperadorButton(
                  operador: "*",
                  onOperadorPressed: insert,
                  disabled: disableOperadorButton,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '4', onNumberPressed: insert),
                NumberButton(number: '5', onNumberPressed: insert),
                NumberButton(number: '6', onNumberPressed: insert),
                OperadorButton(
                  operador: "-",
                  onOperadorPressed: insert,
                  disabled: disableOperadorButton,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                NumberButton(number: '1', onNumberPressed: insert),
                NumberButton(number: '2', onNumberPressed: insert),
                NumberButton(number: '3', onNumberPressed: insert),
                OperadorButton(
                    operador: "+",
                    onOperadorPressed: insert,
                    disabled: disableOperadorButton),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    flex: 3,
                    child: TextButton(
                      onPressed: () => insert("0"),
                      child: const Text("0"),
                    )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: OutlinedButton(
                    onPressed: calculate,
                    child: const Text("="),
                  ),
                ))
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.blue,
      ),
    );
  }

  void calculate() {
    final number1 = int.parse(firstNumber);
    final number2 = int.parse(secondNumber);
    final resultado = operador == "-"
        ? number1 - number2
        : operador == '*'
            ? number1 * number2
            : number1 + number2;
    secondNumber = '';
    operador = '';
    firstNumber = resultado.toString();
    setState(() {
      display = resultado.toString();
      progress = 0.33;
      disableOperadorButton = false;
    });
  }
}
