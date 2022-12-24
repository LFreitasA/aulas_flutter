import 'package:flutter/material.dart';

import 'classes/strings.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ConstruindoAPP(),
        ));
  }
}

class ConstruindoAPP extends StatefulWidget {
  const ConstruindoAPP({Key? key}) : super(key: key);

  @override
  State<ConstruindoAPP> createState() => _ConstruindoAPPState();
}

class _ConstruindoAPPState extends State<ConstruindoAPP> {
  bool onSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.pink,
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.nomeDoApp,
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.w600),
                ),
                Switch.adaptive(
                    value: onSwitch,
                    onChanged: (value) {
                      value = !value;
                      setState(() {
                        value;
                      });
                    })
              ],
            ),
            ListView(),
          ]),
        ),
      ],
    );
  }
}
