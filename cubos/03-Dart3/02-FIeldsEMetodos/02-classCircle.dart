class Circulo {
  double _radius = 5.2; // _radius tona o dado privado
  //double lenght() => 2 * pi - _radius;
  // Field/Campos: static const
  static final pi = 3.14;
  //Metódos: getter e Setter.
  //get get é um metodo
  double get tamanho => 2 * pi * _radius;
  set tamanho(double novoValor) {
    _radius = novoValor / (2 * pi);
  }
}
