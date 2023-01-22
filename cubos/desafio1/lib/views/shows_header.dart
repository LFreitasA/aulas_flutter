import 'package:flutter/material.dart';

import '../classes/Strings.dart';
import '../models/change_theme.dart';
import '../theme/dices_theme.dart';

class ShowsHeader extends StatefulWidget {
  const ShowsHeader({
    Key? key,
  }) : super(key: key);

  @override
  State<ShowsHeader> createState() => _ShowsHeaderState();
}

class _ShowsHeaderState extends State<ShowsHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          Strings.nomeDoApp,
          style: TextStyle(
            color: MyColors.corRosa,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        const ChangeThemeButtonWidget()
      ],
    );
  }
}
