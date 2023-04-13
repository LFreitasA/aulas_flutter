import 'dart:convert';

import 'star_model.dart';
import 'package:http/http.dart' as http;

class StarRepository {
  Future<List<StarModel>> getPlanets() async {
    try {
      final response = await http.get(Uri.parse(
          'https://api.nasa.gov/planetary/apod?count=10&api_key=ZiNkT2BmUosXL30RaI5F5na3R2AhXbYX5fwKBGnp&thumbs=true'));

      final mapList =
          List<Map<String, dynamic>>.from(jsonDecode(response.body));

      final starList = List<StarModel>.generate(
          mapList.length, (i) => StarModel.fromJson(mapList[i], i));

      return starList;
    } catch (e) {
      return <StarModel>[];
    }
  }
}
