import 'package:solid_design_patterns/classes/calcular_desconto.dart';

class CalcularDescontoImpl implements CalcularDesconto {
  @override
  double desconto = 0;

  @override
  double calcularDesconto(double valor) {
    if (valor > 5000) {
      desconto = 0.03;
    }
    if (valor > 10000) {
      desconto = 0.05;
    }
    return desconto;
  }
}
