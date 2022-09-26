void main() {
  //variaveis mutaveis não inicializadas
  var x1;
  print(x1);
  x1 = 2;
  x1 = 2.2;
  x1 = 'imutavel';
  print(x1);

  //Tipo -variaveis não inciiadas @dart=2.9
  double y1;
  //print(y1);
  double? y2;
  y2 = 2;

  //Final - variaveis imutaveis não inicializados
  final z2;
  z2 = 2;
  //z3=3 não pode

  //const w2;

  //* late pode ser final ou null
  late String name;
  //print(name); da erro
  name = 'Leo';
  print(name);
}
