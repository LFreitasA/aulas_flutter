import 'package:flutter/material.dart';
import 'package:listenable/listenable/listenable_counter.dart';

class ListenableApp extends StatelessWidget {
  const ListenableApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = ListenableCounter();
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  counter.decrement();
                },
                icon: const Icon(Icons.remove)),
            AnimatedBuilder(
                animation: counter,
                builder: ((context, child) => Text('${counter.value}'))),
            IconButton(
                onPressed: () {
                  counter.increment();
                },
                icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
