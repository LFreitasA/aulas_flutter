void main() {
  //List listaA = [];
  List listaA = List.empty(growable: true);
  print(listaA);

  List listaB = List<double>.filled(4, 2.2);
  print(listaB);

  List listaC = List.unmodifiable(listaB);
  print(listaC);

  List listaD = listaC + [2, 3];
  print(listaD);

  List listaE = listaA + listaC;
  print(listaE);

  List listaF = [
    if (listaE.length == 4) {2.2},
    5,
    10
  ];
  print(listaF);

  print(listaE == listaB);

  listaD.clear();
  print(listaD);

  print(listaF.first == listaC.last);

  List listaG = listaF;
  listaF.add(5);
  print(listaF);
  print(listaG);
}
