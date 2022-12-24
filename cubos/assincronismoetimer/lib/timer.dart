import 'dart:async';

void finalizarExecucao() {
  // ignore: avoid_print
  print("Fim da execucao.");
}

void main() {
  Timer(const Duration(seconds: 2), finalizarExecucao);
}
