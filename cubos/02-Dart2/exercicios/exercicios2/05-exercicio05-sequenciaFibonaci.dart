void main() {
  int numero = 150;
  fibonaci(numero);
}

void fibonaci(numero) {
  int auxA = 1;
  int auxB = 0;
  int auxC = 0;
  List fibonaci = [];
  while (auxA < numero) {
    fibonaci.add(auxA);
    auxC = auxA;
    auxA += auxB;
    auxB = auxC;
  }
  print(fibonaci);
}
