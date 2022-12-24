import 'dart:io';

Future<String> lerCpf() {
  print("Digite o seu CPF: ");
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
    lerCpf().then((cpf) => print("O seu CPF é $cpf"));
  } on EntradaNula {
    print("A entrada foi nula");
  } on CPFInvalido catch (erro) {
    print('${erro.fonte} não é um CPF');
  }
}

class EntradaNula implements Exception {}

class CPFInvalido implements Exception {
  final String fonte;

  CPFInvalido(this.fonte);
}
