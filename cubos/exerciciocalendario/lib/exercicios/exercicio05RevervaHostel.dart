import 'package:flutter/material.dart';

void main() => runApp(MeuApp());

List mes = [
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19,
  20,
  21,
  22,
  23,
  24,
  25,
  26,
  27,
  28,
  29,
  30,
];

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConstruindoATela(),
    );
  }
}

class ConstruindoATela extends StatefulWidget {
  const ConstruindoATela({super.key});

  @override
  State<ConstruindoATela> createState() => _ConstruindoATelaState();
}

class _ConstruindoATelaState extends State<ConstruindoATela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EirBienBi - Hospedes"),
          backgroundColor: Colors.redAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PrimeiraTela(),
        ));
  }
}

class PrimeiraTela extends StatefulWidget {
  const PrimeiraTela({super.key});

  @override
  State<PrimeiraTela> createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 7);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16, top: 16),
            child: Text(
              "Selecione as datas da sua reserva",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
          Expanded(
            child: Center(
              child: GridView.builder(
                gridDelegate: gridDelegate,
                itemCount: mes.length,
                itemBuilder: (context, index) {
                  final diaDoMes = mes[index];
                  return CriandoGridView(
                    index: diaDoMes,
                  );
                },
              ),
            ),
          ),
          Text("Abril 2022"),
        ],
      ),
    );
  }
}

class CriandoGridView extends StatefulWidget {
  CriandoGridView({Key? key, required this.index}) : super(key: key);
  int index;

  @override
  State<CriandoGridView> createState() => _CriandoGridViewState();
}

class _CriandoGridViewState extends State<CriandoGridView> {
  int count = 1;
  Color cor = Colors.red;
  bool reservado = false;

  @override
  Widget build(BuildContext context) {
    count++;
    return GestureDetector(
      onTap: () {
        if (!reservado) {
          setState(() {
            reservado = !reservado;
            cor = Color.fromARGB(255, 250, 209, 206);
          });
        } else {
          setState(() {
            reservado = !reservado;
            cor = Colors.red;
          });
        }
      },
      child: Card(
          clipBehavior: Clip.none,
          margin: EdgeInsets.zero,
          child: GridTile(
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                color: cor,
                child: Text("${widget.index}"),
              ),
            ]),
          )),
    );
  }
}
