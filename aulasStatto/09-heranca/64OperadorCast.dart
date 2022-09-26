void main() {
  Cachorro cachorro1 = new Cachorro('Rex', 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();

  Gato gato1 = new Gato('Pipsi', 1);
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

  Cachorro animal2 = funcao()
      as Cachorro; //so utilizar o cast apenas quando tiver certeza do tipo de dado que está sendo retornado.~
  print("************");
  print(animal2);
}

Animal funcao() {
  return Cachorro('Dog', 2);
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade) {
    print('Criout o Cachorro com nome: $nome e idade $idade');
  }
  void latir() {
    print("$nome latiu");
  }

  @override
  void dormir() {
    super
        .dormir(); //o comnado super é utilizado quando usamos o override e precisamos acessar a funcao original.
    print("$nome está roncando muito");
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade) {
    print('Criout o Gato com nome: $nome e idade $idade');
  }

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
  Animal(this.nome, this.idade);
  String nome;
  int idade;
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