void main() {
  int totalDeParcelas = 60;
  int numeroDeParcelasPagas = 18;
  double valorDasParcelas = 566.78;
  saldoDevedor(totalDeParcelas, numeroDeParcelasPagas, valorDasParcelas);
}

void saldoDevedor(totalDeParcelas, numeroDeParcelasPagas, valorDasParcelas) {
  double valorTotalConsorcio = totalDeParcelas * valorDasParcelas;
  double valorTotalPago = numeroDeParcelasPagas * valorDasParcelas;
  double saldoDevedor = valorTotalConsorcio - valorTotalPago;
  print("Valor total do consórcio: RS ${valorTotalConsorcio}");
  print("Saldo devedor: RS $saldoDevedor");
}
