import 'dart:io';

//Incompleto.
void main() {
  // Nao deletar

  // Variaveis iniciais
  final number1 = 2;
  final operator = "*";
  final number2 = 3.50;
  final resultado;
  // Escreva seu programa a partir daqui
  if (operator == "-") {
    resultado = number1 - number2;
    print(resultado);
  } else if (operator == "*") {
    resultado = number1 * number2;
    print(resultado);
  } else if (operator == "/") {
    resultado = number1 / number2;
    print(resultado);
  } else {
    resultado = number1 + number2;
    print(resultado);
  }
}
