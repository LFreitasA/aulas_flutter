void main() {
  Cachorro cachorro1 = new Cachorro('Rex', 3);
  cachorro1.comer();
  cachorro1.dormir();
  cachorro1.latir();
  cachorro1.morrer();

  Gato gato1 = new Gato('Pipsi', 1);
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  gato1.morrer();

  Animal animal1 = Gato('dsfsfsd', 1);
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

  morrer() {
    print("Muito triste");
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

  void morrer() {
    vidas--;
    print('Sobraram $vidas vidas');
  }
}

abstract class Animal {
  //bloqueia a criação da animais, apenas das classes extendidas

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

  void morrer();
}

//hashCode codigo unico do objecto
//RuntimeType retorna o tipo do objecto
//ToString altera o que retornano objecto
