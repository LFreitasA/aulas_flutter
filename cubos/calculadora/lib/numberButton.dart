import 'package:flutter/material.dart';

typedef NumberPressedCallback = void Function(String);

class NumberButton extends StatelessWidget {
  const NumberButton(
      {Key? key, required this.number, required this.onNumberPressed})
      : super(key: key);

  final String number;
  final NumberPressedCallback onNumberPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(shape: const BeveledRectangleBorder()),
      onPressed: () => onNumberPressed(number),
      child: Text(number),
    ));
  }
}
