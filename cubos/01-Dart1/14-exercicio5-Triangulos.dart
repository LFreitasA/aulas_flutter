import 'dart:math';

void main() {
  int ladoA = 3;
  int ladoB = 4;
  int ladoC = 5;
  bool trianguloRetangulo = pow(ladoA, 2) + pow(ladoB, 2) == pow(ladoC, 2);
  String tRetangulo = trianguloRetangulo
      ? "É um triângulo retângulo"
      : "Não é um triângulo retângulo";
  bool trianguloValido = ((ladoB - ladoC) < ladoA && ladoA < (ladoB + ladoC)) &&
      ((ladoA - ladoC) < ladoB && ladoB < (ladoA + ladoC)) &&
      ((ladoA - ladoB) < ladoC && ladoC < (ladoA + ladoB));
  if (trianguloValido) {
    print("É um triângulo");
    if (trianguloRetangulo) {
      print(tRetangulo);
    }
    if (ladoA == ladoB) {
      if (ladoB == ladoC) {
        print("Triângulo Equilátero");
      } else {
        print("Triângulo Isóceles");
      }
    } else if (ladoA == ladoC) {
      print("Triângulo Isoceles");
    } else if (ladoB == ladoC) {
      print("Triângulo Isóceles");
    } else {
      print("Triângulo Escaleno");
    }
  } else {
    print("Não é possível formar um triângulo");
  }
}
