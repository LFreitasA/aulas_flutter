void main() {
  List notas = [6, 6, 6, 5.9];
  double media = calcularMedia(notas);
  print("Média: $media");
  print(statusAluno(media));
}

double calcularMedia(List notas) {
  double total = 0;
  notas.forEach((element) {
    total = total + element;
  });
  double media = total / notas.length;
  return media;
}

String statusAluno(media) {
  if (media >= 6) {
    return "Aprovado!";
  } else {
    return "Reprovado!";
  }
}
