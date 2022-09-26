void main() {
  //Divisão com resultado inteiro
  final resultado = 5 ~/ 2; //~/ pega apenas a parte inteira da divisão
  print(resultado);
  //Pós incremento
  int count = 1;
  count = count + 1;
  count++;
  count--;

  final result = count++;
  print(result);
  print(count);
  //Pós incremento
  final result1 = ++count;
  print(result1);
  print(count);
  //Operadores de atribuicao(a op= b-> a = a op b)
  int operation = 1;
  //operation = operation + 2;
  operation += 2;
}
