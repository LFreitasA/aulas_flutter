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

  Animal animal1 = animais.first;
  if (animal1 is Cachorro) {
    animal1.latir();
  } else if (animal1 is Gato) {
    animal1.miar();
  }
  animal1.dormir();

  print(gato1);
  print(cachorro1);
}

class Cachorro extends Animal {
  void latir() {
    print("$nome latiu");
  }

  @override
  void dormir() {
    print("$nome Dormiu e esta roncando muito");
  }
}

class Gato extends Animal {
  int vidas = 7;
  void miar() {
    print("$nome Miou");
  }

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade Vidas=$vidas';
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

  @override
  String toString() {
    return 'Nome: $nome Idade: $idade';
  }
}

//hashCode codigo unico do objecto
//RuntimeType retorna o tipo do objecto
//ToString altera o que retornano objecto