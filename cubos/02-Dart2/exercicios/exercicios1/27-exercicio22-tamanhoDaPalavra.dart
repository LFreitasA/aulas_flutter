void main() {
  String palavra = "Buenas";
  String palavra1 = "inconstitucionalissimamente";
  contadorDePalavras(palavra);
  contadorDePalavras(palavra1);
}

void contadorDePalavras(String palavra) {
  int tamanho = palavra.length;
  print("A palavra $palavra tem $tamanho letras.");
}
