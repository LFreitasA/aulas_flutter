import 'package:flutter/material.dart';
import 'package:megacine/pages/home_page.dart';

import 'classes/Strings.dart';
import 'classes/app_colors.dart';
import 'classes/movies.dart';

void main() async {
  // ignore: await_only_futures
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool isDark = false;

    void onSwitch(value) {
      setState(() {
        isDark = !isDark;
      });
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.orange,
            foregroundColor: Colors.blue,
            title: Text(
              Strings.title,
              style: TextStyle(
                  color: AppColorsDark.textColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            backgroundColor: AppColorsDark.backGroundColor,
            actions: [
              Switch.adaptive(
                  activeColor: AppColorsDark.textColor,
                  value: isDark,
                  onChanged: ((value) {
                    setState(() {
                      value = !value;
                    });
                  }))
            ],
          ),
          backgroundColor: AppColorsDark.backGroundColor,
          body: HomePage()),
    );
  }
}
