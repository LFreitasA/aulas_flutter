import 'dart:math';

Future<int> pegarSenha() {
  final senha = Random().nextInt(50);
  return Future.delayed(Duration(seconds: 3), () => senha);
}

void main() {
  pegarSenha().then((value) => print("Sua senha : $value"));
  print("Fila Virtual");
  print('Aguarde um momento...');
}
