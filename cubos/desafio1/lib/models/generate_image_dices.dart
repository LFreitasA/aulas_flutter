import 'package:flutter/material.dart';

import '../theme/dices_theme.dart';
import '../views/rool_dices_page.dart';

class GenerateImageDices extends StatelessWidget {
  const GenerateImageDices({
    Key? key,
    required this.widget,
    required this.numeroSorteado,
  }) : super(key: key);

  final RoolDicesPage widget;
  final String numeroSorteado;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 38.0, left: 47, right: 61, bottom: 71),
      child: Stack(alignment: Alignment.center, children: [
        Image.asset(
          widget.emptyImage,
          width: 220,
          height: 220,
          filterQuality: FilterQuality.high,
        ),
        Text(
          numeroSorteado,
          style: TextStyle(
              color: MyColors.corBranco,
              fontFamily: 'roboto',
              fontSize: 70.4,
              fontWeight: FontWeight.w700),
        ),
      ]),
    );
  }
}
