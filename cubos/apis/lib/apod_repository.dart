import 'package:apis/apod.dart';
import 'package:dio/dio.dart';

class ApodRepository {
  final _dio = Dio();

  static const url = "https://api.nasa.gov/planetary/apod";

  Future<Apod> getFromToday() async {
    final response = await _dio.get(
      url,
      queryParameters: {
        'api_key': "DEMO_KEY",
      },
    );
    return Apod.fromMap(response.data);
  }

  Future<List<Apod>> getFromWeek() async {
    final startDate = DateTime.now();

    final endDate = startDate.subtract(Duration(days: 7));

    final response = await _dio.get(
      url,
      queryParameters: {
        'api_key': "DEMO_KEY",
        'end_date': "${startDate.year}-${startDate.month}-${startDate.day}",
        'start_date': "${endDate.year}-${endDate.month}-${endDate.day}",
      },
    );
    return (response.data as Iterable)
        .map((data) => Apod.fromMap(data))
        .toList();
  }
}
