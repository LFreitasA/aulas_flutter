import 'dart:io';

typedef SucessoCallBack = void Function(String);
typedef VoidCallback = void Function();

void saudacao({required SucessoCallBack sucesso, required VoidCallback erro}) {
  final nome = stdin.readLineSync();
  if (nome == null || nome.isEmpty) {
    erro();
  } else {
    sucesso(nome);
  }
}

void main() {
  saudacao(sucesso: (nome) {
    mensagemDeSucesso(nome);
  }, erro: () {
    mensagemDeErro();
  });
}

void mensagemDeSucesso(String nome) {
  // ignore: avoid_print
  print("ola $nome");
  // ignore: avoid_print
  print("Seja bem vindo");
}

void mensagemDeErro() {
  // ignore: avoid_print
  print("nome inválido");
}
