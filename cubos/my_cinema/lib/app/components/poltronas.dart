import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListarPoltronas extends StatelessWidget {
  const ListarPoltronas(
      {super.key,
      required this.quantidadeDeLinhasDePoltronas,
      required this.quantidadeDePoltronas,
      required this.lacunaDoCorredor});

  final quantidadeDePoltronas;
  final quantidadeDeLinhasDePoltronas;
  final lacunaDoCorredor;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quantidadeDeLinhasDePoltronas,
      itemBuilder: (context, index) {
        return Row(
          children: [
            for (int i = 0; i < quantidadeDePoltronas; i++)
              i == lacunaDoCorredor
                  ? Container(
                      height: 50,
                      width: 70,
                      color: Colors.blue,
                      child: Text("Corredor $i"),
                    )
                  : poltronas(
                      index: index,
                      i: i,
                      select: false,
                    )
          ],
        );
      },
    );
  }
}

class poltronas extends StatefulWidget {
  poltronas({
    super.key,
    required this.i,
    required this.index,
    required this.select,
  });

  final int i;
  final int index;
  bool select;

  @override
  State<poltronas> createState() => _poltronasState();
}

class _poltronasState extends State<poltronas> {
  @override
  Widget build(BuildContext context) {
    Color color = Colors.red;
    return GestureDetector(
      onTap: () {
        color = Colors.blue;
        setState(() {
          widget.select = !widget.select;
          color;
        });
        print(widget.select);
        print("voce selecionou a linha ${widget.i} da Coluna ${widget.index}");
      },
      child: Container(
        height: 50,
        width: 80,
        color: widget.select ? Colors.blue : color,
        child: Text("Poltrona ${widget.i} "),
      ),
    );
  }
}
