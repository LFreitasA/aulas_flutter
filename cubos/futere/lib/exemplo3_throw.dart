import 'dart:io';

Future<String> lerCpf() {
  print("Digite o seu CPF: ");
  final entrada = stdin.readLineSync();

  if (entrada == null) {
    throw 'Entrada nula';
  }

  if (entrada.length != 11) {
    throw 'O CPF deve conter 11 digitos';
  }

  return Future.value(entrada);
}

void main() {
  try {
    lerCpf().then((cpf) => print("O seu CPF é $cpf"));
  } catch (error) {
    print(error);
  }
}
