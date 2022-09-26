void main() {
  int tempo = 1441;
  int dia = 1440;
  int hora = 60;

  int numeroDeDias = tempo ~/ dia;
  int horas = (tempo % dia) ~/ hora;
  int minutos = (tempo % dia) % hora;
  String textDia = numeroDeDias > 1
      ? "$numeroDeDias dias,"
      : numeroDeDias == 1
          ? "$numeroDeDias dia,"
          : "";

  String textHoras = horas > 1
      ? "$horas horas,"
      : horas == 1
          ? "$horas hora,"
          : "";
  String textMinutos = minutos > 1
      ? "$minutos minutos"
      : minutos == 1
          ? "$minutos minuto"
          : "";
  print("$textDia $textHoras $textMinutos ");
}
