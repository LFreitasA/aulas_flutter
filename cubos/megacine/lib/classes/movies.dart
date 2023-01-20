List<Movies> popularMovies = [];

void listarFilmes() {
  for (var filme in popularMovies) {
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

  void adicionarFilme(Movies filme) {
    popularMovies.add(filme);
    print("Filme adicionado");
  }
}
