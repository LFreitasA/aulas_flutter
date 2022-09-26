void main() {
  int limite = 50;
  buscarNumerosPares(limite);
}

void buscarNumerosPares(limite) {
  for (int i = 1; i < limite; i++) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}
