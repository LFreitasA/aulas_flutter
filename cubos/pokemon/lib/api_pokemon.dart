import 'package:dio/dio.dart';

main() {
  dioRequest("2");
}

int? pokemonID;
String pokemonName = "";
String pokemonImage = "";
String pokemonType = "";
List tipos = [];

Future dioRequest(String idPokemon) async {
  final url = "https://pokeapi.co/api/v2/pokemon/$idPokemon";
  final dio = Dio();
  final response = await dio.get(url);
  tipos.clear();
  print(response.data['id']);
  print(response.data['name']);
  print(response.data['sprites']['front_default']);
  print(response.data['types']);
  final listaDeTipos = response.data['types'];
  print(listaDeTipos.length);
  for (var type in listaDeTipos) {
    print(type['type']['name']);
    tipos.add(type['type']['name']);
  }
  print(tipos);
  pokemonID = response.data['id'];
  pokemonName = response.data['name'];
  pokemonImage = response.data['sprites']['front_default'];
}
