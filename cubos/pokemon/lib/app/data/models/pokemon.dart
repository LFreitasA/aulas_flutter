class Pokemon {
  String nome;
  String imageDefault;
  String imageShiny;
  List tipos;

  Pokemon(
      {required this.nome,
      required this.imageDefault,
      required this.imageShiny,
      required this.tipos});

  factory Pokemon.fromMap(map) {
    print("asdkhjdhkjasdjhkas");
    return Pokemon(
        nome: map['forms'][0]['name'],
        imageDefault: map['sprites']['other']['dream_world']['front_default'],
        imageShiny: map['sprites']['other']['home']['front_shiny'],
        tipos: map['types']);
  }

  @override
  String toString() {
    // TODO: implement toString
    return "nome: $nome, imageDefault: $imageDefault, imageShiny: $imageShiny, tipos: $tipos";
  }
}
