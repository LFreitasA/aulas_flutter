import 'package:flutter/material.dart';

import 'full_name_controler.dart';

class FullName extends StatelessWidget {
  const FullName({Key? key, required this.controller}) : super(key: key);

  final FullNameController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          if (controller.fullName != " ") {
            return Text(controller.fullName);
          } else {
            return const Text("Digite seu nome");
          }
        });
  }
}
