// Sintaxe de uma classe
class Carro {
//Membros: variáveis -> fields/campos(propriedades)
  // final name = "Uno"; hard code
  final String name;
  bool estado = false;
//Construtor: Classe -> contrutor -> objecto
  Carro(this.name);
//membros: funcoes -> metodos (comportamentos)
  void ligar() {
    print("Tentando ligar o carro");
    if (!estado) {
      estado = true;
      print("Carro ligado $name");
    } else {
      print("O carro já estava ligado $name");
    }
  }

  void desligar() {
    print("Tentando desligar o carro");
    if (estado) {
      estado = false;
      print("Carro desligado $name");
    } else {
      print("O carro já estava desligado");
    }
  }
}

void main() {
//instanciar um objecto
  final myCar = Carro("Uno");
  final yourCar = Carro("Doblo");
  print(myCar.name);
  print(yourCar.name);
//Acessar membros
  myCar.desligar();
  myCar.ligar();
  myCar.ligar();
  myCar.desligar();
  myCar.desligar();

//checar qual a classe/tipo de um objecto
  print(myCar.runtimeType);
  print(myCar is Carro);

  // Tudo é um objecto
  print(myCar is Object);
}
