import 'dart:io';

void main() {
  // Nao deletar

  // Variaveis iniciais
  final valorEmprestimo = 5000;
  final serasaScore = 700;
  final meses = 10;
  double juros = serasaScore < 300
      ? 0.03
      : serasaScore < 700
          ? 0.09
          : 0.15;
  final parcela = (valorEmprestimo + ((valorEmprestimo * juros))) / meses;
  print(parcela);
}
