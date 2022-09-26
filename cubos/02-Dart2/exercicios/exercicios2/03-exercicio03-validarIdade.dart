void main() {
  String nome = "Bruna";
  int diaNascimento = 27;
  int mesNascimento = 009;
  int anoNascimento = 2004;
  podeDirigir(diaNascimento, mesNascimento, anoNascimento, nome);
}

void podeDirigir(
    int diaNascimento, int mesNascimento, int anoNascimento, String nome) {
  final dataAtual = DateTime.now();
  int diaAtual = dataAtual.day;
  int mesAtual = dataAtual.month;
  int anoAtual = dataAtual.year;
  int idade = anoAtual - anoNascimento;
  bool podeDirigir = false;
  print(anoAtual - anoNascimento);
  if (anoAtual - anoNascimento < 18) {
  } else if (anoAtual - anoNascimento == 18) {
    if (mesAtual - mesNascimento < 0) {
    } else if (mesAtual - mesNascimento == 0) {
      if (diaAtual - diaNascimento > 0) {
      } else {
        podeDirigir = true;
      }
    } else {
      podeDirigir = true;
    }
  } else {
    podeDirigir = true;
  }
  String mensagem = podeDirigir ? "Pode dirigir!" : "Não pode dirigir";
  print("Nome: $nome");
  print("Idade: $idade");
  print("$mensagem");
}
