class Carro {
  String? marca;
  String? modelo;
  String? cor;
  double? potenciaMotor;
  String? tipoDeCombustivel;

  Carro(this.marca, this.modelo, this.cor, this.potenciaMotor,
      this.tipoDeCombustivel) {
    mostrarNaTela(marca, modelo, cor, potenciaMotor, tipoDeCombustivel);
  }

  mostrarNaTela(marca, modelo, cor, potenciaMotor, tipoDeCombustivel) {
    print("Montadora:  $marca");
    print("Modelo: $modelo");
    print("cor: $cor");
    print("potenciaMotor: $potenciaMotor");
    print("tipoDeCombustivel: $tipoDeCombustivel");
  }
}
