import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  Color selected = Colors.green;
  Color unselected = Colors.grey;

  bool get isDark => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Thema {
  static final light = ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      selectedRowColor: Colors.amber);
  static final dark = ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      primaryColorDark: Colors.amber,
      selectedRowColor: Colors.amber,
      colorScheme: null);
}


/*import 'package:flutter/material.dart';

class PhoneBookTheme {
  static final light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.pink,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.pink,
  );
}*/
