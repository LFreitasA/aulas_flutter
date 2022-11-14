import 'package:exerciciocalendario/theme/theme.dart';
import 'package:exerciciocalendario/sweetHome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatefulWidget {
  MeuApp({super.key});

  @override
  State<MeuApp> createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  ThemeMode currentThemeMode = ThemeMode.light;

  var controlador = true;

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeProvider.themeMode,
            theme: Thema.light,
            darkTheme: Thema.dark,
            home: AplicativoSweetHome(controlador: controlador),
          );
        },
      );
}
