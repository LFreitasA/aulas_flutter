void main() {
  int numeroLimite = 23;
  calculoRecursivo(numeroLimite);
}

void calculoRecursivo(int numeroLimite) {
  int total = 0;
  for (int i = 0; i <= numeroLimite; i++) {
    total += i;
  }
  print("Todos os valores somados de 0 até $numeroLimite: $total");
}
