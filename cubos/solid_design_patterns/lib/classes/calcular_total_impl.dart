import 'package:solid_design_patterns/classes/calcular_total.dart';

class CalcularTotalImpl implements CalcularTotal {
  @override
  double valorTotal(double valorCompra, double desconto, double valorFrete) {
    double total = valorCompra * (1 - desconto) + valorFrete;
    return total;
  }
}
