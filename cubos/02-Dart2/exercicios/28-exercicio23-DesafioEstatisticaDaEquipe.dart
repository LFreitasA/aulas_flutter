void main() {
  List dados = [
    ["Mauricio", 8, 4, 18, 12, 2, 1],
    ["Marcelo", 15, 10, 8, 5, 21, 10],
    ["Tande", 11, 6, 14, 12, 15, 11],
    ["Giovane", 11, 5, 10, 8, 18, 12],
    ["Paulo", 9, 2, 15, 12, 15, 10],
    ["Carlos", 10, 3, 10, 3, 12, 8]
  ];

  dadosDaEquipe(dados);
}

void dadosDaEquipe(List dados) {
  num saques = 0;
  num saquesEfetivos = 0;
  num bloqueios = 0;
  num bloqueiosEfetivos = 0;
  num ataques = 0;
  num ataquesEfetivos = 0;
  for (int i = 0; i < dados.length; i++) {
    print("Jogador: ${dados[i][0]}");
    double saqueEfetivo = (dados[i][2] / dados[i][1]) * 100;
    double bloqueioEfetivo = (dados[i][4] / dados[i][3]) * 100;
    double ataqueEfetivo = (dados[i][6] / dados[i][5]) * 100;
    print(
        "Saque: ${dados[i][2]} / ${dados[i][1]} (${saqueEfetivo.toStringAsFixed(1)}%)");
    print(
        "Bloqueio: ${dados[i][4]} / ${dados[i][3]} (${bloqueioEfetivo.toStringAsFixed(1)}%)");
    print(
        "Ataque: ${dados[i][6]} / ${dados[i][5]} (${ataqueEfetivo.toStringAsFixed(1)}%)");
    saques = saques + dados[i][1];
    saquesEfetivos = saquesEfetivos + dados[i][2];
    bloqueios = bloqueios + dados[i][3];
    bloqueiosEfetivos = bloqueiosEfetivos + dados[i][4];
    ataques = ataques + dados[i][5];
    ataquesEfetivos = ataquesEfetivos + dados[i][6];
  }
  print("Resultado (equipe)");
  print(
      "Pontos de Saque: $saquesEfetivos / $saques (${((saquesEfetivos / saques) * 100).toStringAsFixed(1)}%) ");
  print(
      "Pontos de Bloqueio: $bloqueiosEfetivos / $bloqueios (${((bloqueiosEfetivos / bloqueios) * 100).toStringAsFixed(1)}%) ");
  print(
      "Pontos de Ataque: $ataquesEfetivos / $ataques (${((ataquesEfetivos / ataques) * 100).toStringAsFixed(1)}%) ");
}
