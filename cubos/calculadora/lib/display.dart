import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({
    Key? key,
    required this.display,
  }) : super(key: key);

  final String display;

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  void showEasterEgg(int value, BuildContext context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Flutter")));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showEasterEgg(1, context);
      },
      child: Card(
        elevation: 5.0,
        margin: const EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                widget.display,
              ),
            )),
      ),
    );
  }
}
