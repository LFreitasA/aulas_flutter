import 'package:flutter/material.dart';

typedef OperadorPressedCallBack = void Function(String);

class OperadorButton extends StatelessWidget {
  const OperadorButton({
    Key? key,
    required this.operador,
    required this.onOperadorPressed,
    required this.disabled,
  }) : super(key: key);

  final String operador;
  final OperadorPressedCallBack onOperadorPressed;
  final bool disabled;

  IconData mapOperadorToIcon() {
    switch (operador) {
      case "*":
        return Icons.close;
      case "-":
        return Icons.remove;
      default:
        return Icons.add;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: IconButton(
        onPressed: disabled ? null : () => onOperadorPressed(operador),
        icon: Icon(
          mapOperadorToIcon(),
        ),
      ),
    );
  }
}
