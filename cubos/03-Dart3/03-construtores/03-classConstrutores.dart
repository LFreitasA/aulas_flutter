import 'dart:math';

class Cubo {
  //fiels
  final double lado;
  final double volume;
  //Default
  //Cubo(this.lado);
  //Parametros nomeados - initializer List
  Cubo({required this.lado}) : volume = lado * lado * lado {
    print("Cubo foi inicializado $lado");
    print(volume);
  }

  //named, defaul sobreescrito, redirecionar construtor
  // Cubo.comVolume({required this.volume})
  //    : lado = pow(volume, 1 / 3).toDouble() {}

  Cubo.comVolume({required double volume})
      : this(lado: pow(volume, (1 / 3)).toDouble());
  //COnst -hash code e
  //meio esquecido pouco utilizado
  //const Cubo({required this.lado}) : volume = lado * lado * lado ;

}
