import 'dart:io';

void main() {
  // Nao deletar

  // Variaveis iniciais
  final num1 = 24;
  final num2 = 18;
  final num3 = 25;

  // Escreva seu programa a partir daqui
  int menorNumero = num1 < num2 && num1 < num3
      ? num1
      : num2 < num1 && num2 < num3
          ? num2
          : num3;
  int maiorNumero = num1 > num2 && num1 > num3
      ? num1
      : num2 > num1 && num2 > num3
          ? num2
          : num3;

  int numeroMedio = (num1 > num2 && num1 < num3) || (num1 < num2 && num1 > num3)
      ? num1
      : (num2 > num1 && num2 < num3) || (num2 < num1 && num2 > num3)
          ? num2
          : num3;
  if (maiorNumero == numeroMedio && maiorNumero == menorNumero) {
    print("Entre apenas numeros diferentes");
  } else {
    print("$maiorNumero $numeroMedio $menorNumero");
  }
}
