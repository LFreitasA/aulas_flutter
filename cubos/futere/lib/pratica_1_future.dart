import 'dart:io';

Future<String> readName() {
  print("Digite o nome do arquivo: ");
  final name = stdin.readLineSync();
  return Future.value(name);
}

void showData(String data) {
  print("Dados encontrados");
  print(data);
}

void main() {
  final name = readName().then((name) => showData(name));
}
