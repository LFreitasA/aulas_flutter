import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exercicio 02"),
          backgroundColor: Colors.pink,
        ),
        endDrawer: SafeArea(
          child: Drawer(
            backgroundColor: Colors.pinkAccent[100],
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.

              children: [
                ListTile(
                  title: const Text('Flutter'),
                  subtitle: const Text('Tudo sao widgets'),
                  leading: Icon(
                    Icons.bolt_outlined,
                    color: Colors.blue,
                  ),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  title: const Text('Dart'),
                  subtitle: const Text("E muito forte"),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                  leading: Icon(
                    Icons.tag_faces_outlined,
                    color: Colors.red,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.coffee,
                    color: Colors.brown,
                  ),
                  title: const Text("Cafe"),
                  subtitle: const Text("Quero cafeeee"),
                  onTap: () {},
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[100],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configuracoes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.login),
              label: 'Login',
            ),
          ],
          currentIndex: 0,
          selectedItemColor: Colors.blue[800],
          onTap: null,
        ),
      ),
    );
  }
}
