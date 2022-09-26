void main() {
  //List listaInicial = [2, 3]; //ok mensagem ok
  //List listaInicial = [0, 6, 8, 3, 1, 4];//ok mensagem ok
  //List listaInicial = [0, 3, 4, 5, 6, 7, 8, 9, 10];//ok mensagem ok
  //List listaInicial = [1, 2, 3, 5, 6, 7];//ok mensagem ok
  //List listaInicial = [10, 3, 6, 9, 4, 8, 7];//ok mensagem ok
  //List listaInicial = [8, 7, 10, 4, 5, 6, 9, 2];
  List listaInicial = [4, 9, 2, 3, 5];

  List listaA = List.empty(growable: true);
  listaA.addAll(listaInicial);
  if (listaA.length > 5) {
    if (listaA.first == 0 && listaA.last == 10) {
      int auxiliar = listaA.length - ((5 - listaA.length) * -1);
      listaA.removeRange(1, listaA.length - (auxiliar - 1));
    } else if ((listaA.first != 0 || listaA.last != 10) && listaA[3] == 3) {
      listaA.first = 1;
      listaA.last = 9;

      int auxiliar = listaA.length - ((5 - listaA.length) * -1);
      listaA.removeRange(auxiliar - 1, listaA.length - 1);
    } else {
      if (listaA.length > 5) {
        listaA.removeLast();
      }
      if (listaA.length > 5) {
        int auxiliar = listaA.length - ((5 - listaA.length) * -1);
        listaA.removeRange(0, listaA.length - auxiliar);
      }
    }
  } else {
    int auxiliar = 5 - listaA.length;
    List listaAuxiliar = List<int>.filled(auxiliar, 2);
    listaA += listaAuxiliar;
    listaA[1] = 8;
  }
  int somar = listaA[1] + listaA[3];
  double divisao = listaA[4] / listaA[2];

  String mensagem = somar * divisao > 15 ? "Lista válida" : "Lista inválida";
  print(mensagem);
}
