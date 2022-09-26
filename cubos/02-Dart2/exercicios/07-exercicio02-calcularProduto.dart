void main() {
  List numero1 = [2, 3, 8, 5];
  List numero2 = [14, 9, 17, 3];
  List numero3 = [6, 1, 7, 4];
  produto(numero1);
  produto(numero2);
  produto(numero3);
}

void produto(List numeros) {
  int produto1 = numeros[0] * numeros[1];
  int produto2 = numeros[2] * numeros[3];
  int resultado = produto1 + produto2;
  print(resultado);
}
