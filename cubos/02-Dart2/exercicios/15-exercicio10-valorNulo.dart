void main() {
  int? numero = 5;
  if (numero != null) {
    print("Valor informado: $numero");
  } else {
    print("NullPointerException: Erro ao acessar um valor nulo na memória");
  }
}
