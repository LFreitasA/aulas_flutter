import 'package:agendatelefonica/phoneBook.dart';
import 'package:agendatelefonica/resources/strings.dart';
import 'package:agendatelefonica/resources/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(const PhoneBookApp());

class PhoneBookApp extends StatefulWidget {
  const PhoneBookApp({super.key});

  @override
  State<PhoneBookApp> createState() => _PhoneBookAppState();
}

class _PhoneBookAppState extends State<PhoneBookApp> {
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
      theme: PhoneBookTheme.light,
      darkTheme: PhoneBookTheme.dark,
      home: PhoneBook(onThemeModePressed: toggleThemeMode),
    );
  }
}
