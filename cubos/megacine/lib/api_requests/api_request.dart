import 'package:dio/dio.dart';
import 'package:megacine/api_requests/key.dart';
import 'package:megacine/classes/movies.dart';

const String apiKey =
    "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ODgyN2Q3MDVkYzY3MjYzNmMzOThmM2RkZWQzZmExNiIsInN1YiI6IjYzYTc2Njg3YTU3NDNkMDBkZjNiMzdlNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.L3OFZlcvsDv0yoi-Lbdd3YeTvQq9FYEp4KsBFdtuwns";
final url = "https://api.themoviedb.org/3/movie/76341?api_key=<<api_key>>";
final urlPopularMovies = "https://api.themoviedb.org/3/movie/popular";

final urlImageMovie = "https://www.themoviedb.org/t/p/w220_and_h330_face";

void dioRequest() async {
  final dio = Dio();
  final response = await dio.get(url,
      options: Options(headers: {"Authorization": "Bearer $key"}));
  print(response);
}

Future<int> getPopularMovies() async {
  List<Movies> lista = [];
  final dio = Dio();
  final response = await dio.get(urlPopularMovies,
      options: Options(headers: {"Authorization": "Bearer $key"}));
  //print(response.data['results']);

  final dados = response.data['results'];

  for (var dado in dados) {
    //  print(dado);
    String titulo = dado['original_title'];
    String resumo = dado['overview'];
    String imagem = "$urlImageMovie${dado['poster_path']}";
    final filme = Movies(title: titulo, overview: resumo, image: imagem);
    filme.adicionarFilme(filme);
    lista.add(filme);
  }
  listarFilmes();
  return 0;
}

void main() async {
  final movies1 = await getPopularMovies();
}
