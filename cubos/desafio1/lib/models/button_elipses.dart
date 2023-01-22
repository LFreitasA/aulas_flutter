import 'package:flutter/material.dart';

import '../theme/dices_theme.dart';

class ButtonElipses extends StatelessWidget {
  const ButtonElipses({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          2,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                  color: currentPage == index
                      ? MyColors.corRosa
                      : MyColors.elipseInactive,
                  borderRadius: const BorderRadius.all(Radius.circular(100))),
            ),
          ),
        ));
  }
}
