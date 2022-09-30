import './classes.dart';

void main() {
  String montadora = "Fiat";
  String modelo = "Palio";
  String cor = "branca";
  double motor = 1.0;
  String combustivel = "Flex";
  final carro = Carro("Toyota", "Yaris", "azul", 1.0, "Gasoleo");
  print("Carro 1");
  final carro1 = Carro(montadora, modelo, cor, motor, combustivel);
  montadora = "Honda";
  modelo = "Civic";
  cor = "cinza";
  motor = 1.8;
  combustivel = "gasolina";
  print("Carro 2");

  final carro2 = Carro(montadora, modelo, cor, motor, combustivel);
  montadora = "Hyundai";
  modelo = "Tucson";
  cor = "prata";
  motor = 2.4;
  combustivel = "gasolina";
  print("Carro 3");

  final carro3 = Carro(montadora, modelo, cor, motor, combustivel);
}
//, "Yaris", "Azul", "1.0", "Gasoleo");