void main() {
  //Fixed x Growable
  //Empty, filled, from, growable x []
  final listGrowable = [1, 2, 3];
  listGrowable.add(4);
  print(listGrowable);

  var listEmpty =
      List.empty(); //lista com tamanho fixo, não é possivel add itens
  print(listEmpty);
  listEmpty =
      List.empty(growable: true); //transforma uma lista fixa em growable
  listEmpty.add(5);
  print(listEmpty);

  final aList = List<int>.filled(5, 0);
  print("aList");
  print(aList);

  final fromList = List<int>.from(aList); //CRIA uma lista apartir de outra
  print(fromList);
  //Imutabilidade (Variavel x Valor/conteudo)
  // final, const const value, mutable x const balue, unmodifiable

  const bList = [
    1,
    2,
    3
  ]; //const não permite alterar ou adicionar os dados da lista

  //bList.add(4);
  print(bList);

  List<int> cList = const [1, 2, 30]; //Não pode add ou alterar os dados da list
  print(cList);
  cList = [4, 5, 6];
  print(cList);

  final list = List<int>.unmodifiable([1, 2, 3]);
  //não pode modificar uma lista unmodifiable
}
