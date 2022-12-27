import 'package:flutter/material.dart';

import 'package:pokemon/api_pokemon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idPokemon = 1;

  @override
  Widget build(BuildContext context) {
    dioRequest(idPokemon.toString());
    return Column(
      children: [
        Text("Pokedex"),
        Text(pokemonID.toString()),
        Text(
          pokemonName,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        for (var type in tipos) Text(type),
        Image.network(
          pokemonImage,
          scale: 0.2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  dioRequest(idPokemon.toString());
                  idPokemon--;
                  setState(() {
                    idPokemon;
                    pokemonImage;
                    pokemonName;
                  });
                },
                icon: Icon(
                  Icons.remove,
                  size: 25,
                )),
            SizedBox(
              height: 22,
              width: 200,
            ),
            IconButton(
                onPressed: () {
                  dioRequest(idPokemon.toString());
                  idPokemon++;
                  setState(() {
                    idPokemon;
                    pokemonID;
                    pokemonImage;
                    pokemonName;
                  });
                },
                icon: Icon(
                  Icons.add,
                  size: 25,
                ))
          ],
        )
      ],
    );
  }
}
