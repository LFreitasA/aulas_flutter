import 'package:flutter/material.dart';
import 'package:pokemon/app/data/repository/repository.dart';
import 'package:pokemon/home_page.dart';
import 'package:provider/provider.dart';

void main() =>
    runApp(Provider(create: (context) => Pokemons(), child: const MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    int number = 428;
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: HomePage(number: number),
    );
  }
}
