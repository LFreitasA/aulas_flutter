import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget TextFieldFactory({required String platform}) {
  switch (platform) {
    case "IOS":
      return CupertinoTextField();
    default:
      return TextFormField(
        decoration: InputDecoration(label: Text("Como podemos ajudar?")),
      );
  }
}
