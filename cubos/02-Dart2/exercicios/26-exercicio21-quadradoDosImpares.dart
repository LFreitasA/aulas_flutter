import 'dart:math';

void main() {
  int limite = 200;
  quadradoDosNumerosImpares(limite);
}

void quadradoDosNumerosImpares(limite) {
  for (int i = 1; i < limite; i++) {
    if (i % 2 != 0) {
      print("$i * $i = ${pow(i, 2)}");
    }
  }
}
