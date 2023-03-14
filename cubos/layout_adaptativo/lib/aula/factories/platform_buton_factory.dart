import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

makePlatformButton(
    {required String platform, required String title, Function()? onPressed}) {
  switch (platform) {
    case "IOS":
      return CupertinoButton(
        child: Text(title),
        onPressed: onPressed,
        color: Color.fromARGB(100, 200, 22, 22),
      );
    case "windows":
      return Button(
        child: Text(title),
        onPressed: onPressed,
      );
    default:
      return MaterialButton(
        child: Text(title),
        onPressed: onPressed,
        color: Color.fromARGB(226, 22, 200, 28),
      );
  }
}
