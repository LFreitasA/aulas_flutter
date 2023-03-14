import 'package:flutter/cupertino.dart';
import 'package:layout_adaptativo/aula/entities/custom_dialog.dart';

class IosDialog implements CustomDialog {
  @override
  show(BuildContext context) {
    return showCupertinoDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text("Teste iOS"),
            content: Text("Esse é um teste no iOS"),
            actions: [
              CupertinoButton(
                  child: Text("Fechar iOS"),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }
}
