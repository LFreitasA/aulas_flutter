import 'dart:math';

void main() {
  //peso/altura*altura
  double altura = 1.80;
  double peso = 105;
  var imc = peso / pow(altura, 2);
  print('IMC ' + imc.toStringAsFixed(2));
}
