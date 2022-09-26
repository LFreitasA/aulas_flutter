void main() {
  List lista = [5, 2, 3, 1, 11, 22];
  //forEach
  print("FOR EACH");
  lista.forEach((element) {
    print(element);
  });
  print("FOR IN");
  //for in
  for (var element in lista) {
    print(element);
  }

  //Contains - Valida se contem o item no array
  //retorna um booleano
  print("CONTAINS");
  final contem = lista.contains(2);
  print(contem);
  if (lista.contains(4)) {
    lista.remove(4);
  } else {
    lista.add(4);
  }
  print(lista);
  //Map - Passa os dados para uma funcao e retorna um iterable
  //toList() pega o iterable e transforma em list
  final lista2 = lista.map((e) => e * 10).map((e) => e - 5).toList();
  print(lista2);
  //where é utilizado para fazer um filtro e gerar uma nova lista
  final lista3 = lista.where((element) => element % 2 == 0);
  print(lista3);

  //sort
  //a.comparteTo(b)-> 0: a==b| -1: a<b | 1:a>b
  lista.sort();
  print(lista);
  print("crescente");
  lista.sort((a, b) => a.compareTo(b));
  print(lista);
  print("Decrescente");
  lista.sort((a, b) => b.compareTo(a));
  print(lista);
}
