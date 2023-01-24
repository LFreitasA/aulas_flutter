import 'package:flutter/material.dart';

class CartCounter extends StatelessWidget {
  const CartCounter({
    required this.count,
    Key? key,
  }) : super(key: key);

  final String? count;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 12,
        width: 12,
        decoration:
            BoxDecoration(color: Colors.red[800], shape: BoxShape.circle),
        child: Center(
            child: Text(
          count ?? "0",
          style: const TextStyle(color: Colors.white, fontSize: 12),
        )));
  }
}
