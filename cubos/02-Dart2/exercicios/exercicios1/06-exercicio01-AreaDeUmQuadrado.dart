import 'dart:math';

void main() {
  int lado = 3;
  areaDoquadrado(lado);
  int lado1 = 5;
  areaDoquadrado(lado1);
  int lado2 = 15;
  areaDoquadrado(lado2);
}

void areaDoquadrado(int lado) {
  num resultado = pow(lado, 2);
  print(resultado);
}
