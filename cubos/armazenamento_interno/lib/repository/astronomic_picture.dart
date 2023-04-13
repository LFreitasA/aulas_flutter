import 'package:armazenamento_interno/repository/picture.dart';
import 'package:dio/dio.dart';

class PictureDay {
  String key = 'ftUCka39jpgIswyjzo3P2rqWkqbNy29oIimabh4m';
  String url = 'https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY';

  Future<Picture> dioRequest() async {
    final dio = Dio();
    final response = await dio.get('$url');
    print("response");
    print(response);

    print("response.data");
    print(response.data);

    return Picture.fromMap(response.data);
  }
}
