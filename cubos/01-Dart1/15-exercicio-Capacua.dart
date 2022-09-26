void main() {
  int numero = 32713;
  int primeiroDigito = numero ~/ 10000;
  int segundoDigito = (numero % 10000) ~/ 1000;
  int terceiroDigito = ((numero % 10000) % 1000) ~/ 100;
  int quartoDigito = (((numero % 10000) % 1000) % 100) ~/ 10;
  int quintoDigito = ((((numero % 10000) % 1000) % 100) % 10) ~/ 1;
  print(primeiroDigito);
  print(segundoDigito);
  print(terceiroDigito);
  print(quartoDigito);
  print(quintoDigito);

  if (primeiroDigito == quintoDigito) {
    if (segundoDigito == quartoDigito) {
      print("Capicua");
    }
  } else {
    print("Não é capicua");
  }
}
