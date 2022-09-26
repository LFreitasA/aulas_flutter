void main() {
  String operador = "+";
  double valor1 = 10;
  double valor2 = 5;
  operacao(operador, valor1, valor2);
}

void operacao(String operador, double num1, double num2) {
  double resultado = 0;
  bool mostrar = true;
  switch (operador) {
    case "+":
      {
        resultado = num1 + num2;
        break;
      }
    case "-":
      {
        resultado = num1 - num2;
        break;
      }
    case "*":
      {
        resultado = num1 * num2;
        break;
      }
    case "/":
      {
        resultado = num1 / num2;
        break;
      }
    default:
      {
        mostrar = false;
        print("operação inválida");
      }
  }
  mostrar ? imprimirResultado(resultado, operador, num1, num2) : "";
}

void imprimirResultado(resultado, operador, num1, num2) {
  print("Resultado de $num1 $operador $num2 = $resultado");
}
