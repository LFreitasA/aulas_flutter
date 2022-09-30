abstract class Funcionarios {
  String? matricula;
  String? nome;
  String? sobrenome;
  num? salario;
  num horasDoMes = 220;
  num? horasTrabalhadas;

  Funcionarios(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horasTrabalhadas) {}

  calcularHoraExtra(horasTrabalhadas, salario) {
    double _valorPorHora = (salario / horasDoMes);
    double _valorHoraExtra = (_valorPorHora * 0.5) + _valorPorHora;
    if ((horasTrabalhadas - horasDoMes) > 0) {
      salario = _valorHoraExtra * (horasTrabalhadas - horasDoMes) + salario;
    }
    return salario;
  }

  apresentarDados(salario, horasTralhadas) {
    num salarioComExtra = calcularHoraExtra(horasTrabalhadas, salario);
    print("Matrícula: $matricula");
    print("Nome: $nome");
    print("Horas trabalhadas no mês: $horasTrabalhadas");
    print("Salário: ${salarioComExtra.toStringAsFixed(2)}");
  }
}
