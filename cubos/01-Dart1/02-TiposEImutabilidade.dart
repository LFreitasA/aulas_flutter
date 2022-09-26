void main(List<String> arguments) {
  //Definindo com var
  var x = 1;
  var y = 4.56123;
  var z = 'palavra';

//Definindo com tipo
  int x1 = 2;
  double y1 = 2.53;
  String z1 = 'Qualquer';

//Mudança de tipo e diferença (flutter explicado na aula.) (melhor sempre usar por tipo)
  var x2 = 2.4;
  double y2 = 5.5;

  //Dynamic
  dynamic danger = 2;
  print(danger);
  danger = 'String';

  // print(danger / 2);
  //final & const

  const int x3 = 2;
  final int y3 = 2;

  final now =
      DateTime.now(); //Finak define o valor uma vez e não permite auterações.
  print(now);

  // const novoNow = DateTime.now(); da erro pq toda vez q for executado vai mudar.
}
