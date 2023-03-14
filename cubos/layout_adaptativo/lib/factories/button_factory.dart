import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget LegacyButton({required String platform, required String buttonName}) {
  switch (platform) {
    case "IOS":
      return CupertinoButton(child: Text(buttonName), onPressed: () {});
    default:
      return ElevatedButton(onPressed: () {}, child: Text(buttonName));
  }
}
