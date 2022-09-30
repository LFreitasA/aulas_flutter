import 'classFuncionario.dart';

class Vendedor extends Funcionarios {
  Vendedor(super.matricula, super.nome, super.sobrenome, super.salario,
      super.horasTrabalhadas);

  @override
  calcularHoraExtra(horasTrabalhadas, salario) {
    double _valorPorHora = (salario / horasDoMes);
    double _valorHoraExtra = (_valorPorHora * 0.5) + _valorPorHora;
    if ((horasTrabalhadas - horasDoMes) > 0) {
      salario = _valorHoraExtra * (horasTrabalhadas - horasDoMes) + salario;
    }
    salario = salario + (salario * 0.20);
    return salario;
  }
}
