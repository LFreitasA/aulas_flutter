import 'package:flutter/material.dart';
import 'classes/strings.dart';
import 'classes/images.dart';
import 'classes/theme.dart';
import 'sports_gym.dart';

void main() => runApp(const SportGymApp());

class SportGymApp extends StatefulWidget {
  const SportGymApp({super.key});

  @override
  State<SportGymApp> createState() => _SportGymAppState();
}

class _SportGymAppState extends State<SportGymApp> {
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
      theme: SportsGymTheme.light,
      darkTheme: SportsGymTheme.dark,
      home: SportGym(
        onThemeModePressed: toggleThemeMode,
      ),
    );
  }
}
