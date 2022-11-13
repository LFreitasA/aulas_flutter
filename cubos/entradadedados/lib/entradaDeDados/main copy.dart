import 'package:entradadedados/entradaDeDados/signUp.dart';
import 'package:entradadedados/resorces/Strings.dart';
import 'package:entradadedados/resorces/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  ThemeMode currentThemeMode = ThemeMode.light;

  void toggleThemeMode() {
    setState(() {
      currentThemeMode = currentThemeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      themeMode: currentThemeMode,
      theme: SignUpTheme.light,
      darkTheme: SignUpTheme.dark,
      home: SignUp(onThemeModePressed: toggleThemeMode),
    );
  }
}
