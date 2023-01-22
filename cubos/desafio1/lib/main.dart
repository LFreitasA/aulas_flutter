import 'package:desafio1/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'theme/dices_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode:
                themeProvider.themeMode, //muda o thema para claro ou escuros
            theme: DicesTheme.lightTheme,
            darkTheme: DicesTheme.darkTheme,
            home: const HomePage(),
          );
        },
      );
}
