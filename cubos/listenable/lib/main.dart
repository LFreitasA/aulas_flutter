import 'package:flutter/material.dart';
import 'package:listenable/change_notifier/full_name/full_name_controler.dart';

import 'change_notifier/change_notifier_app.dart';
import 'listenable/listenale_app.dart';
import 'value_notifier/value_notifier_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ValueNotifierApp(),
    );
  }
}
