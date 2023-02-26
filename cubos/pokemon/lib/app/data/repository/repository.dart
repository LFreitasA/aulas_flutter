import 'package:dio/dio.dart';
import 'package:pokemon/app/data/models/pokemon.dart';

class Pokemons {
  static Dio dio =
      Dio(BaseOptions(baseUrl: "https://pokeapi.co/api/v2/pokemon/"));

  Future<dynamic> pokemon(number) async {
    print(number);
    try {
      final response = await dio.get("$number");
//      print("response.data['forms'][0]['name']");
//      print(response.data['forms'][0]['name']);
//      print(response.data['sprites']['other']['dream_world']['front_default']);
//      print(response.data['sprites']['other']['home']['front_shiny']);
//      print(response.data['types']);

      return Pokemon.fromMap(response.data);
    } catch (error) {
      return error;
    }
  }
}
