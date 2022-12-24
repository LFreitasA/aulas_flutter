import 'dart:io';

Future<String> readName() {
  print("Digite o nome do arquivo: ");
  final name = stdin.readLineSync();
  if (name == null) {
    throw NomeNulo();
  }

  if (!name.contains("user")) {
    throw NomeInvalido(name);
  }
  return Future.value(name);
}

void showData(String data) {
  print("Dados encontrados");
  print(data);
}

void main() {
  try {
    final name = readName().then((name) => showData(name));
  } on NomeNulo {
    print("O nome não pode ser nulo");
  } on NomeInvalido catch (error) {
    print(
        'O nome do arquivo escolhido foi "${error.nome}", porém deve conter a palavra "user" para ser aceito');
  }
}

class NomeNulo implements Exception {}

class NomeInvalido implements Exception {
  NomeInvalido(this.nome);
  final String nome;
}
