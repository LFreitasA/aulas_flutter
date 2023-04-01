import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextAnimation extends StatelessWidget {
  const TextAnimation({
    super.key,
    required this.isNormal,
  });

  final bool isNormal;

  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      curve: Curves.easeInExpo,
      style: TextStyle(
          color: isNormal ? Colors.black : Colors.pink,
          fontSize: isNormal ? 15 : 50,
          fontWeight: isNormal ? FontWeight.normal : FontWeight.bold),
      duration: Duration(seconds: 1),
      child: Center(
        child: Text("Cubos Academy"),
      ),
    );
  }
}
