//Incompleto
void main() {
  int value = 17;
  int nota100 = 0;
  int nota50 = 0;
  int nota20 = 0;
  int nota10 = 0;
  int nota5 = 0;
  int nota2 = 0;

  nota100 = value ~/ 100;
  value = value % 100;

  nota50 = value ~/ 50;
  value = value % 50;

  nota20 = value ~/ 20;
  value = value % 20;

  nota10 = value ~/ 10;
  value = value % 10;

  nota2 = value ~/ 2;
  value = value % 2;

  if (value % 5 == 0) {
    nota5 = value ~/ 5;
    value = value % 5;
  } else {
    nota5 = value ~/ 5;
    value = value % 5;

    nota2 = value ~/ 2;
    value = value % 2;
  }

  String mostrarNota100 = nota100 > 0 ? "$nota100 de 100" : "";
  String mostrarNota50 = (nota50 > 0) && (nota100 > 0)
      ? ", $nota50 de 50"
      : nota50 > 0
          ? "$nota50 de 50"
          : "";
  String mostrarNota20 = (nota20 > 0) && ((nota50 > 0) || (nota100 > 0))
      ? ", $nota20 de 20"
      : nota20 > 0
          ? "$nota20 de 20"
          : "";
  String mostrarNota10 =
      (nota10 > 0) && ((nota20 > 0) || (nota50 > 0) || (nota100 > 0))
          ? ", $nota10 de 10"
          : nota10 > 0
              ? "$nota10 de 10"
              : "";
  String mostrarNota5 = (nota5 > 0) &&
          ((nota10 > 0) || (nota20 > 0) || (nota50 > 0) || (nota100 > 0))
      ? ", $nota5 de 5"
      : nota5 > 0
          ? "$nota5 de 5"
          : "";
  String mostrarNota2 = (nota2 > 0) &&
          ((nota5 > 0) ||
              (nota10 > 0) ||
              (nota20 > 0) ||
              (nota50 > 0) ||
              (nota100 > 0))
      ? ", $nota2 de 2"
      : nota2 > 0
          ? "$nota50 de 2"
          : "";

  print(
      "$mostrarNota100$mostrarNota50$mostrarNota20$mostrarNota10$mostrarNota5$mostrarNota2");
}
