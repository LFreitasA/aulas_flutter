void main() {
  //Operadores
  //Sunm addAll, value x reference, list.from
  final list1 = [1, 2, 3];
  final list2 = [4, 5, 6];
  final list3 = list2 + list1;
  list2.addAll(list1);
  print(list2);
  print(list3);
  print(list2 == list3);
  final list4 = list1;
  print(list4 == list1);
  // Condicionais em listas
  //if, else, ternaru, null check

  final mylogic = true;
  if (mylogic) {
    list1.add(4);
  }
  print(list1);
  final list5 = [4, 5, 6, if (mylogic) 5 else 7]; //pode ser usado ternario
  print(list5);

  int? nulo;
  final nList = [1, 2, 3, nulo ?? 5];
  print(nList);
  //operador spread(...)
  //list from other + item, conditional
  final aList = [1, 2, 3];
  final list6 = [...aList, 4, 5, 6, if (mylogic) ...list2];
  print(list6);
}
