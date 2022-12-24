import 'dart:io';

Future<int> pegarNumero(String texto) {
  try {
    final valor = int.parse(texto);
    return Future.value(valor);
  } on FormatException {
    return Future.error('Entrada invalida');
  }
}

void main() {
  pegarNumero('a')
      .then((value) => print("numero correto"))
      .catchError((error) => print(error));
}
