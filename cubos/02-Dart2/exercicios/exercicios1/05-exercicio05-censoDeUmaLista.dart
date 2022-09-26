void main() {
  List dados = [30, 27, 7, 6, 35, 18, 22, 9, 17, 23, 53, 16, 35, 50, 8, 26, 43];
  int? maiorNumero = dados.first;
  int? menorNumero = dados.first;
  num soma = 0;
  int par = 0;
  int impar = 0;

  for (var dado in dados) {
    if (dado > maiorNumero!) {
      maiorNumero = dado;
    }
    if (dado < menorNumero!) {
      menorNumero = dado;
    }
    soma += dado;
    int ePar = dado % 2 == 0 ? par++ : impar++;
  }
  double media = soma / (dados.length);
  print(
      "Menor: $menorNumero, Maior: $maiorNumero, Média: $media, Ímpares: $impar, Pares: $par");
  //SOLUCAO PROFESSOR

  dados.sort();
  final min = dados.first;
  final max = dados.last;
  final avg = dados.reduce((value, element) => value + element) / dados.length;
  final even = dados.where((element) => element % 2 == 0).length;
  final odd = dados.length - even;
  print("Menor: $min, Maior: $max, Média: $avg, Ímpares: $odd, Pares: $even");
}
