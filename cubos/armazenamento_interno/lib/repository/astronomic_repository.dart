import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:armazenamento_interno/repository/star_model.dart';

class StarRepository {
  Future<List<StarModel>> getPlanets() async {
    try {
      final key = 'ftUCka39jpgIswyjzo3P2rqWkqbNy29oIimabh4m';
      List<Map<String, dynamic>> mapList = <Map<String, dynamic>>[];

      final response = await http
          .get(Uri.parse(
              'http://api.nasa.gov/planetary/apod?count=10&api_key=ftUCka39jpgIswyjzo3P2rqWkqbNy29oIimabh4m&thumbs=true'))
          .catchError((e) {
        return http.Response('body', 500);
      });
      if (response.statusCode == 200) {
        mapList = List<Map<String, dynamic>>.from(jsonDecode(response.body));
        print("Com Internet");
        await _saveResponse(mapList);
      } else {
        print("Sem Internet - Corre cambada");

        mapList = await _getResponse();
      }

      final starList = List<StarModel>.generate(
          mapList.length, (index) => StarModel.fromJson(mapList[index], index));

      return starList;
    } catch (e) {
      return <StarModel>[];
    }
  }

  Future<void> _saveResponse(List<Map<String, dynamic>> response) async {
    final box = await Hive.openBox('stars');
    print("dados salvos");
    box.put('response', response);
  }

  Future<List<Map<String, dynamic>>> _getResponse() async {
    final box = await Hive.openBox('stars');

    final _values = await box.get('response');
    if (_values == null) {
      print("value NULL");
      return <Map<String, dynamic>>[];
    } else {
      print("lendo salvos");

      return List<Map<String, dynamic>>.generate(
          _values.length, (index) => Map<String, dynamic>.from(_values[index]));
    }
  }
}
