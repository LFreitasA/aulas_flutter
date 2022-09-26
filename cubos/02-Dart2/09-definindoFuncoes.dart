void main() {
  //Exemplo loop
  primeiraFuncao(1, 2);
  //Tipo function -variavel, () ou .call
  final function = primeiraFuncao;
  function(2, 4);
  function.call(4, 8);
  //Arrow - expressoes
  minhaPrimeiraFuncaoArrow("Olá funções");
  //First class
  final list = [1, 2, 3];
  list.forEach(print);

  //Conceito
}

void primeiraFuncao(numero1, numero2) {
  print("Primeira Linha");
  final resultado = numero1 + numero2;
  print(resultado);
}

void minhaPrimeiraFuncaoArrow(mensagem) =>
    {print(mensagem), print("Segunda mensagem")};
