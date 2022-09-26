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
  gato1.vidas = 1;
  gato1.comer();
  gato1.dormir();
  gato1.miar();
  gato1.morreu();
  gato1.morreu();
}

class Cachorro extends animal {
  void latir() {
    print("$nome latiu");
  }
}

class Gato extends animal {
  int vidas = 7;

  void miar() {
    print("$nome Miou");
  }

  void morreu() {
    if (vidas > 0) {
      vidas--;
      print("$nome morreu, agora lhe restaram $vidas vidas.");
    } else {
      print(
          "$nome morreu e lhe acabaram as vidas, seja bem vindo ao céu dos animais.");
    }
  }
}

class animal {
  String? nome;
  int? idade;
  void comer() {
    print("$nome comeu");
  }

  void dormir() {
    print("$nome Dormiu");
  }
}
