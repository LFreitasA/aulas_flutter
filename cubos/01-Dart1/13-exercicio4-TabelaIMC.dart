import 'dart:math';

void main() {
  //peso/altura*altura
  double altura = 1.88;
  double peso = 167;
  var imc = peso / pow(altura, 2);
  print('IMC ' + imc.toStringAsFixed(2));
  if (imc < 18.5) {
    print("Abaixo do peso");
  } else if (imc < 25) {
    print("Peso normal");
  } else if (imc < 30) {
    print("Peso Acima do peso");
  } else {
    print("Obsedidade");
  }
}
