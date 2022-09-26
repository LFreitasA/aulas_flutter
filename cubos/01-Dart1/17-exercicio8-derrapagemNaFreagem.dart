import 'dart:io';
import 'dart:math';

void main() {
  // Nao deletar
  final line = stdin.readLineSync() ?? '';
  if (line.isEmpty) exit(0);
  final inputs = line.split(' ');

  // Variaveis iniciais
  final velocidade = int.parse(inputs[0]);
  final aceleracao = int.parse(inputs[1]);

  var velocidadeFinal = pow(velocidade, 2);
  var aceleracaoFInal = 2 * aceleracao;
  var distanciaPercorrida = -velocidadeFinal / aceleracaoFInal;
  print(distanciaPercorrida);
}
