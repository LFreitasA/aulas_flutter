import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 89, 255, 241),
          title: const Text(
            "*Lista infinita*",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: 1000,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Center(child: Text("Item nº $index")),
                leading: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  toggleListView() {}
}
