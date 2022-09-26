void main() {
  int numero = 32;
  String resultado = numero == 0
      ? "zero"
      : numero % 2 == 0
          ? "Par"
          : "Impar";
  print(resultado);
}
