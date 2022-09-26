void main() {
  //Negação
  final boolean = false;
  print(boolean);
  print(!boolean);
  if (!boolean) {
    print("boolean negado");
  } else {
    print("boolean negado");
  }
  //Diferente
  if (boolean != true) {
    print("boolean diferente");
  }
  //? null(??)
  String? nulo;
  final result = nulo ?? "qualuqer";
  print(nulo);
  //* is (tipos)
  dynamic dinamico = 2;
  if (dinamico is double) {
    print("É int");
  }
}
