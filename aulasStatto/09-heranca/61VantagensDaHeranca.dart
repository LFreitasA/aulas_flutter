void main() {
  Cachorro cachorro1 = new Cachorro();
  cachorro1.nome = 'Rex';
  cachorro1.idade = 3;
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = new Gato();
  gato1.nome = "Pipsi";
  gato1.idade = 1;
  gato1.comer();
  gato1.dormir();
  gato1.miar();

  //List<Cachorro> cachorros = [];
  //List<Gato> gatos = [];
  List<Animal> animais = [];
  animais.add(gato1);
  animais.add(cachorro1);

  Animal animal1 = animais.first;
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
  animal1.dormir();
}

class Cachorro extends Animal {
  void latir() {
    print("$nome latiu");
  }
}

class Gato extends Animal {
  void miar() {
    print("$nome Miou");
  }
}

class Animal {
  String? nome;
  int? idade;
  void comer() {
    print("$nome comeu");
  }

  void dormir() {
    print("$nome Dormiu");
  }
}
