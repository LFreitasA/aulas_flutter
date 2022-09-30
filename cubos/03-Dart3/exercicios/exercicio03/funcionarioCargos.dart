import 'classCaixa.dart';

void main() {
  Caixa caixa1 = Caixa("1579", "Ana", "Oliveira", 1212, 230);
  caixa1.apresentarDados(caixa1.salario, caixa1.horasTrabalhadas);

  print("");

  Vendedor vendedor1 = Vendedor("1601", "João", "Silva", 1212, 230);
  vendedor1.apresentarDados(vendedor1.salario, vendedor1.horasTrabalhadas);

  print("");

  Gerente gerente1 = Gerente("1603", "Maria", "Souza", 1212, 230);
  gerente1.apresentarDados(vendedor1.salario, vendedor1.horasTrabalhadas);
}
