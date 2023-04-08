import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:pokemon/app/data/repository/repository.dart';
import 'package:pokemon/app/data/tiype_color.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.number});
  int number;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController editingNumber = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final dados = context.read<Pokemons>();
    return FutureBuilder<dynamic>(
      future: dados.pokemon(widget.number),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        print(snapshot);
        final pokemon = snapshot.data!;
        return Scaffold(
          backgroundColor: bgColor(pokemon.tipos[0]['type']['name'].toString()),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      if ((widget.number - 1) > 0) {
                        widget.number = widget.number - 1;
                      }
                    });
                  },
                  child: Text(
                    "Anterior",
                    style: TextStyle(color: Colors.white),
                  )),
              TextButton(
                  onPressed: () {
                    setState(() {
                      widget.number = widget.number + 1;
                    });
                  },
                  child: Text(
                    "proximo",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
          appBar: AppBar(
            title: Text(
              pokemon.nome,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor:
                bgColor(pokemon.tipos[0]['type']['name'].toString()),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: editingNumber,
                        keyboardType: TextInputType.numberWithOptions(
                            decimal: false, signed: false),
                        decoration: InputDecoration(
                            labelText: "insira o número do Pokemon"),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          print(editingNumber.text);
                          print(editingNumber.text);
                          print(int.tryParse(editingNumber.text));
                          if (int.tryParse(editingNumber.text) != null) {
                            widget.number = int.tryParse(editingNumber.text)!;
                            setState(() {
                              widget.number;
                              editingNumber.clear();
                            });
                          }
                          // int numero = int.parse(editingNumber.text);
                        },
                        child: Text(
                          "Ir",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
                Expanded(
                    child: Center(
                        child: SvgPicture.network(pokemon.imageDefault))),
                //Image.network(pokemon.imageShiny),
                for (dynamic tipo in pokemon.tipos)
                  Text(
                    tipo['type']['name'],
                    style: TextStyle(color: Colors.white),
                  )
              ],
            ),
          ),
        );
      },
    );
  }
}
