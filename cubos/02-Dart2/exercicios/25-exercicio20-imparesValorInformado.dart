void main() {
  int limite = 50;
  buscarNumerosImpares(limite);
}

void buscarNumerosImpares(limite) {
  for (int i = 1; i < limite; i++) {
    if (i % 2 != 0) {
      print(i);
    }
  }
}
