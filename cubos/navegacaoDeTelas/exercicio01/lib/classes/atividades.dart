List<Atividades> minhasAtividades = [];

class Atividades {
  String nome;
  String descricao;
  bool status;
  DateTime date;
  Atividades(this.nome, this.descricao, this.date) : status = false;

  @override
  String toString() {
    return "Nome = $nome, descricao = $descricao, status = $status";
  }

  String dataFormatada() {
    return "${date.day}/${date.month}/${date.year}";
  }
}
