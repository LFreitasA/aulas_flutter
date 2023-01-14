import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ValueNotifierCounter extends StatelessWidget {
  const ValueNotifierCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = ValueNotifier<int>(0);
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              counter.value--;
            },
            icon: Icon(Icons.remove)),
        ValueListenableBuilder(
            valueListenable: counter,
            builder: (context, value, child) {
              return Text("${value}");
            }),
        IconButton(
            onPressed: () {
              counter.value++;
            },
            icon: Icon(Icons.add)),
      ],
    ));
  }
}
