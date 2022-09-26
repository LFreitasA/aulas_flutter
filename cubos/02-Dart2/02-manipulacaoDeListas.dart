void main() {
  //tipo e iferencia de Lista
  final xlist = [1, 2, 3];
  List<int> xlist2 = [1, 2, 3];
  List xlist3 = [1, 2, 3];
  List<List<int>> matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  print(matrix[1][1]);
  //Inferencia, List<tipo>, List, <>, matriz

  //[C]rud de Lista
  //Read: listm [], elementAt
  final aList = [1, 2, 3];
  print(aList);
  print(aList[2]);
  // print(aList.elementAt(1));

  //update: add, addAll, isert, inserAll, []
  final bList = [1, 2, 3];
  final cList = [3, 3, 3];
  final dList = [33, 43, 35];
  bList.add(5); //adiciona no fim da lista
  //print(bList);
  bList.insert(0, 9); //insere na posicao especifica indice 0 add 9
  print(bList);
  bList.insert(2, 8); //insere na posicao especifica indice 2 add 8
  print(bList);
  bList.addAll(cList);
  print(bList);
  bList.insertAll(1, dList);
  print(bList);

  bList[5] = 88;
  print(bList);
  //Delete: remove, bool, removeAt, removeLast, clear
  bList.remove(88); //remove a primeira ocorrencia
  print(bList);
  bList.remove(
      88); //remover um numero que não está na lista não tem ação. e retorna um bool informando se removeu ou não
  bList.removeAt(0);
  print(bList);

  bList.removeLast(); //remove o ultimo item da lista
  print(bList);

  bList.removeRange(
      0, 2); //remove as entre as posicoes informadas, no exemplo 0,1
  print(bList);

  bList.clear(); //apaga todas as informações da Lista
  print(bList);
}
