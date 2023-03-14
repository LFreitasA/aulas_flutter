import 'package:flutter/material.dart';
import 'package:layout_adaptativo/aula/entities/custom_dialog.dart';

class AndroidDialog implements CustomDialog {
  @override
  show(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Teste Android"),
            content: Text("teste"),
            actions: [
              ElevatedButton(
                child: Text("sdsa"),
                onPressed: () => Navigator.pop(context),
              )
            ],
          );
        });
  }
}
