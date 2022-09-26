void main() {
  bool booleano = false;
  if (booleano) {
    print("É Verdadeiro");
    print("Acertou");
  } else {
    print("É falso");
    print("Errou");
  }

  print("Acabou");
  print("********************");
  int num = 12;
  if (num % 2 == 0) {
    print("Par");
  } else {
    print("Impar");
  }
  print("********************");

  double salario = 4000;
  double junior = 1000;
  double pleno = 3000;
  double senior = 5000;
  if (salario <= junior) {
    print("É dev Junior");
  } else if (salario <= pleno) {
    print("É dev Pleno");
  } else {
    print("É dev Senior");
  }

  print("********************");
}
