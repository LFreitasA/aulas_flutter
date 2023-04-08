import 'package:solid_design_patterns/classes/calcular_desconto_impl.dart';
import 'package:solid_design_patterns/classes/calcular_frete_impl.dart';
import 'package:solid_design_patterns/classes/calcular_desconto.dart';
import 'package:solid_design_patterns/classes/calcular_frete.dart';
import 'package:solid_design_patterns/classes/calcular_total.dart';
import 'package:solid_design_patterns/classes/calcular_total_impl.dart';

import 'cidades.dart';
import 'compra.dart';

class CalculadoraDePrecos {
  double calcula(Compra compra) {
    // define o desconto
    CalcularDesconto idesc = CalcularDescontoImpl();
    CalcularFrete ifrete = CalcularFreteImpl();
    CalcularTotal itotal = CalcularTotalImpl();

    double desconto = idesc.calcularDesconto(compra.valor);

    double valorFrete = ifrete.calcularValorFrete(compra.cidade);

    double total = itotal.valorTotal(compra.valor, desconto, valorFrete);

    return total;
  }
}
