import 'package:flutter/material.dart';
import 'package:listenable/listenable/listenable_counter.dart';

class ListenableApp extends StatefulWidget {
  const ListenableApp({Key? key}) : super(key: key);

  @override
  State<ListenableApp> createState() => _ListenableAppState();
}

class _ListenableAppState extends State<ListenableApp> {
  final counter = ListenableCounter();

  @override
  void initState() {
    super.initState();
    counter.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
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
            Text("${counter.value}"),
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
