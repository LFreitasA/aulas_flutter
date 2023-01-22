// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class DicesTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(primaryContainer: Colors.red),
  );
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(primaryContainer: Colors.pink),
  );
}

class MyColors {
  static Color corRosa = const Color.fromRGBO(229, 0, 123, 1);
  static Color corBranco = const Color.fromRGBO(255, 255, 255, 1);
  static Color textColorLight = const Color.fromRGBO(56, 59, 64, 1);
  static Color textColorDark = const Color.fromRGBO(241, 241, 241, 1);
  static Color corCinzaFundoBotao = const Color.fromRGBO(213, 214, 217, 1);
  static Color corTextButtonAfterUsed = const Color.fromRGBO(132, 133, 134, 1);
  static Color corTextButtonBeforeUsed =
      const Color.fromARGB(255, 255, 255, 255);
  static Color cardBackgroundColorDark = const Color.fromRGBO(59, 59, 59, 1);
  static Color cardBackgroundColorLight =
      const Color.fromRGBO(242, 244, 247, 1);
  static Color activeTrackColor = const Color.fromRGBO(187, 134, 252, 0.38);
  static Color inactiveTrackColor = const Color.fromRGBO(33, 33, 33, 0.08);
  static Color elipseInactive = const Color.fromRGBO(196, 196, 196, 1);
}
