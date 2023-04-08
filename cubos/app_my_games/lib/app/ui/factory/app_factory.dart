import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget getApp(
    {required String platform, required Widget home, required title}) {
  switch (platform) {
    case "IOS":
      return CupertinoApp(home: home, title: title);
    case "windows":
      return FluentApp(home: home, title: title);
    default:
      return MaterialApp(home: home, title: title);
  }
}
