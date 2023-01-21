List<Movies> popularMovies = [];
List<Movies> topRateMovies = [];

void listarFilmesPopularMovies() {
  for (var filme in popularMovies) {
    print("filme");
    print(filme.title);
    print("Descrição: ");
    print(filme.overview);
    print("Imagem: ");
    print(filme.image);
  }
}

void listarFilmesTopRateMovies() {
  for (var filme in topRateMovies) {
    print("filme");
    print(filme.title);
    print("Descrição: ");
    print(filme.overview);
    print("Imagem: ");
    print(filme.image);
  }
}

class Movies {
  String title;
  String overview;
  String image;

  Movies({required this.title, required this.overview, required this.image});

  void adicionarFilmesPopulares(Movies filme) {
    popularMovies.add(filme);
    print("Filme adicionado");
  }

  void adicionarTopRatePopulares(Movies filme) {
    topRateMovies.add(filme);
    print("Filme adicionado");
  }
}
