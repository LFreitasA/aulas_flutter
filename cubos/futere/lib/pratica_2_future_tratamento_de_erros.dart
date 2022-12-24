import 'dart:io';

Future<String> readName() {
  print("Digite o nome do arquivo: ");
  final name = stdin.readLineSync();
  return Future.value(null);
}

void showData(String data) {
  print("Dados encontrados");
  print(data);
}

void main() {
  try {
    final name = readName().then((name) => showData(name));
  } catch (error) {
    print("error");
  }
}
