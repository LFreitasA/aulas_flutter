void main() {
  //Estrutura -ForEach
  final numbers = [1, 5, 6];
  // numbers.forEach(acao);
  //numbers.forEach(anonimo);
  //Convencao: parametros não utilizados
  // print(numbers.reduce((value, _) => value + 1));
  buildEmployLine(
      (name, job, city, salary) => print("$name $job $city $salary"));
}

//funcao com nome
void acao(int element) {
  print(element);
}

//funcao sem nome - anônima ou lambda
final anonimo = (element) {
  print(element);
};
//exemplo - Lista de funcionários
void buildEmployLine(
    Funcion(String name, String job, String city, String salary)) {
  final employees = [
    ['Romão', 'Professor', 'Florianopolis', '2000'],
    ['Juninho', 'CEO', 'Salvador', '5000'],
    ['Clara', 'Head', 'Vancouver', '4000']
  ];
  for (final employee in employees) {
    Funcion(employee[0], employee[1], employee[2], employee[3]);
  }
}
