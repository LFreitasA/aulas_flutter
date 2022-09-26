void main() {
  String name = "";
  welcome(name);
}

void welcome(name) {
  if (name == "") {
    print("Bem-vindo(a) visitante!");
  } else {
    print("Bem-vindo(a) $name!");
  }
}
