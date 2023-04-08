import 'calculadora_de_precos.dart';
import 'cidades.dart';
import 'compra.dart';

void main() {
  print("Inicio");
  final calculadora = CalculadoraDePrecos();

  final compra1 = Compra(
    codigoProduto: 1,
    valor: 5300.0,
    cidade: Cidades.salvador,
  );

  final precoCompra = calculadora.calcula(compra1);

  print('Valor da compra ficou $precoCompra');
}
