void main() {
  String opcao = "C";
  String opcao1 = "R";
  String opcao2 = "U";
  String opcao3 = "D";
  String opcao4 = "G";
  menu(opcao);
  menu(opcao1);
  menu(opcao2);
  menu(opcao3);
  menu(opcao4);
}

void menu(opcao) {
  switch (opcao) {
    case "C":
      print("Cadastrar/Inserir");
      break;
    case "R":
      print("Buscar Ler");
      break;
    case "U":
      print("Editar/Atualizar");
      break;
    case "D":
      print("Excluir/Apagar");
      break;
    default:
      print("opcao inválida");
  }
}
