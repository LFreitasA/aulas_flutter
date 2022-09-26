void main() {
  RepositorioPessoas repo = RepositorioPessoasRemote();
  repo.ler(10);
  repo.adicionar('Ciolfi');
  repo.apagar(5);
}

//contrato de interface
abstract class RepositorioPessoas {
  String ler(int id);
  void adicionar(String nome);
  void apagar(int id);
  void apagarTodos();
}

class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int id) {
    // TODO: implement apagar
  }

  @override
  String ler(int id) {
    return 'Leonardo';
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int id) {
    // TODO: implement apagar
  }

  @override
  String ler(int id) {
    return 'Leo';
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}
