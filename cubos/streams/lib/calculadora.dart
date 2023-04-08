import 'package:flutter/material.dart';
import 'package:streams/classes/Strings.dart';
import 'package:streams/classes/app_colors.dart';

class Calculadora extends StatefulWidget {
  Calculadora({Key? key}) : super(key: key);
  String equacao = "0";
  String operador = "";
  double primeiroNumero = 0;
  double segundoNumero = 0;
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: Text(widget.equacao,
              style: TextStyle(color: AppColors.textNumberColor, fontSize: 50)),
        ),
        Expanded(
          child: ListView(
            children: [
              Row(
                children: [
                  limparTela(),
                  mudarParaNegativo(),
                  porCem(),
                  selecionarOperador(Strings.divisao),
                ],
              ),
              Row(
                children: [
                  botoesComNumeros(Strings.numero7),
                  botoesComNumeros(Strings.numero8),
                  botoesComNumeros(Strings.numero9),
                  selecionarOperador(Strings.multiplicacao),
                ],
              ),
              Row(
                children: [
                  botoesComNumeros(Strings.numero4),
                  botoesComNumeros(Strings.numero5),
                  botoesComNumeros(Strings.numero6),
                  selecionarOperador(Strings.subtracao),
                ],
              ),
              Row(
                children: [
                  botoesComNumeros(Strings.numero1),
                  botoesComNumeros(Strings.numero2),
                  botoesComNumeros(Strings.numero3),
                  selecionarOperador(Strings.soma),
                ],
              ),
              Row(
                children: [
                  botoesComNumeros(Strings.numero0),
                  botoesComNumeros(Strings.ponto),
                  botaoIgual(),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  TextButton botaoIgual() => TextButton(
      style: TextButton.styleFrom(
          backgroundColor: AppColors.operatorBackgoundColor),
      onPressed: widget.primeiroNumero == 0 && widget.operador == ""
          ? null
          : () {
              widget.segundoNumero = double.parse(widget.equacao);
              double total = 0;
              if (widget.operador == "+") {
                total = widget.primeiroNumero + widget.segundoNumero;
              } else if (widget.operador == "-") {
                total = widget.primeiroNumero - widget.segundoNumero;
              } else if (widget.operador == "*") {
                total = widget.primeiroNumero * widget.segundoNumero;
              } else if (widget.operador == "/") {
                total = widget.primeiroNumero / widget.segundoNumero;
              }
              widget.primeiroNumero = total;
              widget.equacao = total.toString();
              widget.operador = "";
              setState(() {
                widget.equacao;
              });
            },
      child: const Text(Strings.igual,
          style: TextStyle(color: AppColors.textNumberColor, fontSize: 50)));

  TextButton porCem() {
    return TextButton(
        onPressed: () {
          double valorEquacao = double.parse(widget.equacao) * 0.01;
          widget.equacao = valorEquacao.toString();
          setState(() {
            widget.equacao;
          });
        },
        child: const Text(Strings.valorPorCem));
  }

  TextButton mudarParaNegativo() {
    return TextButton(
        onPressed: () {
          double valorEquacao = double.parse(widget.equacao) * -1;

          widget.equacao = valorEquacao.toString();

          setState(() {
            widget.equacao;
          });
        },
        child: const Text(Strings.valorNegativo));
  }

  TextButton limparTela() {
    return TextButton(
        onPressed: () {
          widget.equacao = "0";
          widget.primeiroNumero = 0;
          widget.segundoNumero = 0;
          setState(() {
            widget.equacao;
          });
        },
        child: const Text(Strings.valorAc));
  }

  TextButton selecionarOperador(String operador) {
    return TextButton(
        style: TextButton.styleFrom(
            backgroundColor: AppColors.operatorBackgoundColor),
        onPressed: widget.operador != ""
            ? null
            : () {
                widget.primeiroNumero = double.parse(widget.equacao);
                widget.equacao = "0";
                widget.operador = operador;
                setState(() {
                  widget.equacao;
                });
              },
        child: Text(operador,
            style: TextStyle(color: AppColors.textNumberColor, fontSize: 50)));
  }

  salvarNumero(String numero) {
    if (numero == "." && widget.equacao == "0") {
      widget.equacao = "0.";
    } else {
      widget.equacao = widget.equacao == "0"
          ? widget.equacao = numero
          : widget.equacao += numero;
    }
    setState(() {
      widget.equacao;
    });
  }

  TextButton botoesComNumeros(String numero) => TextButton(
      style: TextButton.styleFrom(backgroundColor: AppColors.numberButtonColor),
      onPressed: () => numero == "." && widget.equacao.contains(".")
          ? null
          : salvarNumero(numero),
      child: Text(
        numero,
        style: TextStyle(color: AppColors.textNumberColor, fontSize: 50),
      ));
}
