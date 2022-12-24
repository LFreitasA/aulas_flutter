String lerArquivo() {
  return "teste";
}

void main() async {
  final texto = await lerArquivo();
  print(texto);
}
