import 'classCalculadoraComClasse.dart';

void main() {
  String operacao = "+";
  var numero1 = 10;
  var numero2 = 5.25;
  Calculadora calculo1 = Calculadora(numero1, numero2, operacao);
  operacao = "-";
  Calculadora calculo2 = Calculadora(numero1, numero2, operacao);
  operacao = "/";

  Calculadora calculo3 = Calculadora(numero1, numero2, operacao);
  operacao = "*";

  Calculadora calculo4 = Calculadora(numero1, numero2, operacao);
  operacao = "5";
  Calculadora calculo5 = Calculadora(numero1, numero2, operacao);
}
