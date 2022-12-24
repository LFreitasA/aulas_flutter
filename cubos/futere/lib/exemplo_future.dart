import 'dart:math';

Future<int> pegarSenha() {
  final senha = Random().nextInt(50);
  return Future.value(senha);
}

void main() {
  pegarSenha().then((value) => print("Sua senha : $value"));
  print("Fila Virtual");
}
