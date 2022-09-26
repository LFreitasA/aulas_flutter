void main() {
  int ano = 2022;
  anoBissexto(ano);
}

void anoBissexto(ano) {
  String p = ano % 4 == 0 ? "Ano Bissexto" : "";
  print(p);
}
