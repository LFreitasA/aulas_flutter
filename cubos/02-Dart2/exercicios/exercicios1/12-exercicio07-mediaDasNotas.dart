void main() {
  List notas = [7, 6.3, 8];
  calcularMedia(notas);
}

void calcularMedia(List notas) {
  double total = 0;
  notas.forEach((element) {
    total = total + element;
  });
  double media = total / notas.length;
  print(media);
}
