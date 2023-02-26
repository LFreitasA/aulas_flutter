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
          body: Column(
            children: [
              Center(child: SvgPicture.network(pokemon.imageDefault)),
              //Image.network(pokemon.imageShiny),
              for (dynamic tipo in pokemon.tipos)
                Text(
                  tipo['type']['name'],
                  style: TextStyle(color: Colors.white),
                )
            ],
          ),
        );
      },
    );
  }
}
