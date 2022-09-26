void main() {
  int numero = 3;
  int auxiliar = numero - 1;
  for (int i = 1; i <= auxiliar; i++) {
    numero = numero * i;
  }
  if (numero == 0) {
    numero = 1;
  }
  print(numero);
}
