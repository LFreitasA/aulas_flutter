class Calculadora {
  num? valorA;
  num? valorB;
  String? operacao;

  Calculadora(this.valorA, this.valorB, this.operacao) {
    switch (operacao) {
      case "+":
        somar(valorA, valorB, operacao);

        break;
      case "-":
        subtrair(valorA, valorB, operacao);
        break;
      case "/":
        dividir(valorA, valorB, operacao);
        break;
      case "*":
        multiplicar(valorA, valorB, operacao);
        break;
      default:
        print("Operação inválida");
    }
  }

  somar(valorA, valorB, operacao) {
    num resultado = valorA + valorB;
    mostrarResultado(valorA, valorB, operacao, resultado);
  }

  subtrair(valorA, valorB, operacao) {
    num resultado = valorA - valorB;
    mostrarResultado(valorA, valorB, operacao, resultado);
  }

  dividir(valorA, valorB, operacao) {
    num resultado = valorA / valorB;
    mostrarResultado(valorA, valorB, operacao, resultado);
  }

  multiplicar(valorA, valorB, operacao) {
    num resultado = valorA * valorB;
    mostrarResultado(valorA, valorB, operacao, resultado);
  }

  mostrarResultado(valorA, valorB, operacao, resultado) {
    print("Resultado de $valorA $operacao $valorB = $resultado");
  }
}
