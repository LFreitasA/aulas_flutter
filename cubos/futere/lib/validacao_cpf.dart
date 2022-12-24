import 'dart:io';

Future<String> lerCpf() {
  print("Digite o CPF");
  final entrada = stdin.readLineSync();
  if (entrada == null) {
    throw EntradaNula();
  }
  if (entrada.length != 11) {
    throw CPFInvalido(entrada);
  }
  return Future.value(entrada);
}

void main() {
  try {
    lerCpf().then((cpf) => print("Seu CPF É $cpf"));
  } on EntradaNula {
    print("entrada nula");
  } on CPFInvalido catch (erro) {
    print("${erro.fonte} não é um CPF");
  }
}

class EntradaNula implements Exception {}

class CPFInvalido implements Exception {
  final String fonte;
  CPFInvalido(this.fonte);
}
