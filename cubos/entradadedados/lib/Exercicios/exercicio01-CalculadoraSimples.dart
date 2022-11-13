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
          backgroundColor: Colors.grey,
          title: Text(
            "CalculadoraSimples",
          ),
        ),
        body: Calculadora(),
      ),
    );
  }
}

class Calculadora extends StatefulWidget {
  const Calculadora({
    Key? key,
  }) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  double resultado = 0;
  double primeiroValor = 0;
  double segundoValor = 0;

  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Center(child: Text("Resultado: $resultado")),
        TextFormField(
          controller: _controller1,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            label: Text("Infome o primeiro valor"),
          ),
        ),
        TextFormField(
          controller: _controller2,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            label: Text("Informe o Segundo Valor!"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    resultado = double.parse(_controller1.text) +
                        double.parse(_controller2.text);
                    _controller1.clear();
                    _controller2.clear();
                  });
                },
                child: Text("Somar")),
            Builder(builder: (context) {
              return TextButton(
                  onPressed: () {
                    setState(() {
                      resultado = 0;
                      Form.of(context)?.reset();
                      primeiroValor = 0;
                      segundoValor = 0;
                      _controller1.clear();
                      _controller2.clear();
                    });
                  },
                  child: Text("Limpar"));
            })
          ],
        )
      ]),
    );
  }
}
