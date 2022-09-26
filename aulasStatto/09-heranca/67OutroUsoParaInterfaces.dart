void main() {
  Movel movel1 = Pessoa();
  movel1.frente();
  movel1.esquerda();
  movel1.direita();

  Valor venda1 = Geladeira();
  print(venda1.preco());
}

class Geladeira implements Valor {
  @override
  double preco() {
    return 500;
  }
}

class Pessoa implements Movel {
  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }
}

class Carro implements Movel, Valor {
  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  double preco() {
    // TODO: implement preco
    throw UnimplementedError();
  }
}

abstract class Movel {
  void frente();
  void esquerda();
  void direita();
}

abstract class Valor {
  double preco();
}
