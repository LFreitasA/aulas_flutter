import 'package:solid_design_patterns/cidades.dart';
import 'package:solid_design_patterns/classes/calcular_frete.dart';

class CalcularFreteImpl implements CalcularFrete {
  @override
  double calcularValorFrete(Cidades cidade) {
    switch (cidade) {
      case Cidades.feiraDeSantana:
      case Cidades.salvador:
      case Cidades.santoAmaro:
        return 0.0;
      case Cidades.saoPaulo:
      case Cidades.rioDeJaneiro:
        return 15.0;
    }
  }
}
