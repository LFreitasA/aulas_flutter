import 'package:flutter/material.dart';

import 'value_notifier_counter.dart';

class ValueNotifierApp extends StatelessWidget {
  const ValueNotifierApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueNotifierCounter(),
    );
  }
}
