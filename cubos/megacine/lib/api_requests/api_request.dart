import 'package:dio/dio.dart';
import 'package:megacine/api_requests/key.dart';

const String apiKey =
    "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ODgyN2Q3MDVkYzY3MjYzNmMzOThmM2RkZWQzZmExNiIsInN1YiI6IjYzYTc2Njg3YTU3NDNkMDBkZjNiMzdlNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.L3OFZlcvsDv0yoi-Lbdd3YeTvQq9FYEp4KsBFdtuwns";
final url = "https://api.themoviedb.org/3/movie/76341?api_key=<<api_key>>";
final urlPopularMovies = "https://api.themoviedb.org/3/movie/popular";

void dioRequest() async {
  final dio = Dio();
  final response = await dio.get(url,
      options: Options(headers: {"Authorization": "Bearer $key"}));
  print(response);
}

void getPopularMovies() async {
  final dio = Dio();
  final response = await dio.get(urlPopularMovies,
      options: Options(headers: {"Authorization": "Bearer $key"}));
  //print(response.data['results']);

  final dados = response.data['results'];
  print(dados);

  for (var element in dados) {
    print("ola");
    print(element);
  }
}

void main() {
  getPopularMovies();
}
