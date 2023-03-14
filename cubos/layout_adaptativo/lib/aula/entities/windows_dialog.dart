import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:layout_adaptativo/aula/entities/custom_dialog.dart';

class WindowsDialog implements CustomDialog {
  @override
  show(BuildContext context) {
    print("object");
    return showDialog(
        context: context,
        builder: (_) {
          return ContentDialog(
              title: Text("Teste Windows"),
              content: Text("teste"),
              actions: [
                Button(
                    child: Text("Fechar"),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ]);
        });
  }
}
