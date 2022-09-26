void main() {
  //Invocacoes
  //studantAverageObtrigatorios("leonardo", 33, [8, 9, 10, 7]);
  //studantAverageNomeados(age: 18, grades: [10, 10, 10], name: "Joao");

  // studantAverageOpcionais("Leonardo", 33, [10, 5, 8, 6]);
  studantAverageMistos(18, [7, 8, 9], name: "Leonardo");
  //Variável como parametro
}

//Funcao com parametros obrigatorios
void studantAverageObtrigatorios(String name, int age, List<int> grades) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print('O aluno $name de $age anos teve média $avg.');
}

//Funcao com parametros nomeados - required, null x valor padrão
void studantAverageNomeados(
    {String name = "não identificado",
    required int age, //tona o parametro obrigatório
    required List<int> grades}) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print('O aluno $name de $age anos teve média $avg.');
}

//Funcao com parametros opcionais
void studantAverageOpcionais(
    [String name = "não identificado",
    int? age, //tona o parametro obrigatório
    List<int>? grades]) {
  //final avg =
  //grades.reduce((value, element) => value + element) / grades.length;
  print('O aluno $name de $age anos teve notas $grades.');
}

//Funcao com diferentes parametros(misto)
void studantAverageMistos(
    int age, //tona o parametro obrigatório
    List<int> grades,
    {String name = "não identificado"}) {
  final avg =
      grades.reduce((value, element) => value + element) / grades.length;
  print('O aluno $name de $age anos teve média $avg.');
}
