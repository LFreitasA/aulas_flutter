import 'dart:convert';
import 'dart:io';

const userFolderPath = './user';

Future<String> readName() async {
  print("Digite o nome do arquivo: ");
  final name = stdin.readLineSync();
  if (name == null) {
    throw NomeNulo();
  }

  if (!name.contains("user")) {
    throw NomeInvalido(name);
  }
  return name;
}

void showData(User data) {
  print("Dados encontrados");
  print(data);
}

Future<User> readUserFile(String fileName) async {
  final file = File('$userFolderPath/$fileName.json');
  final json = await file.readAsString();
  final data = jsonDecode(json);
  return User(
      nome: data['nome'], dataNascimento: DateTime.parse(data['nascimento']));
}

void main() async {
  try {
    final name = await readName();
    final data = await readUserFile(name);
    showData(data);
  } on NomeNulo {
    print("O nome não pode ser nulo");
  } on NomeInvalido catch (error) {
    print(
        'O nome do arquivo escolhido foi "${error.nome}", porém deve conter a palavra "user" para ser aceito');
  } on FileSystemException {
    print("Arquivo não encontrado");
  } on FormatException {
    print("Arquivo com formatacao incorreta");
  }
}

class NomeNulo implements Exception {}

class NomeInvalido implements Exception {
  NomeInvalido(this.nome);
  final String nome;
}

class User {
  final String nome;
  final DateTime dataNascimento;
  User({required this.nome, required this.dataNascimento});

  @override
  String toString() => 'User(nome: $nome, dataNascimento: $dataNascimento)';
}
