import 'package:flutter/material.dart';

import '../classes/Strings.dart';
import '../theme/dices_theme.dart';
import '../views/rool_dices_page.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final RoolDicesPage widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, bottom: 11),
      child: SizedBox(
        width: 135,
        height: 40,
        child: TextButton(
          onPressed: widget.onCancel,
          style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.only(left: 25, right: 25)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(color: MyColors.corRosa),
              ),
            ),
          ),
          child: Text(
            Strings.cancelButton,
            style: TextStyle(
                fontFamily: 'roboto',
                fontWeight: FontWeight.w500,
                color: MyColors.corRosa),
          ),
        ),
      ),
    );
  }
}
