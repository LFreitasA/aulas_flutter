import 'dart:io';

void main() {
  final numero = stdin.readLineSync();
  try {
    int.parse(numero!);
  } on FormatException catch (error) {
    print('"${error.source}" não é um número');
  }
}
