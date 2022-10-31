import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tab Scroll"),
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
            ),
          ),
          body: ListaDasTabs(),
        ),
      ),
    );
  }
}

class ListaDasTabs extends StatelessWidget {
  const ListaDasTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Center(
          child: Text("Tab 1"),
        ),
        Center(
          child: Text("Tab 2"),
        ),
        Center(
          child: Text("Tab 3"),
        ),
        Center(
          child: Text("Tab 4"),
        ),
        Center(
          child: Text("Tab 5"),
        ),
        Center(
          child: Text("Tab 6"),
        ),
        Center(
          child: Text("Tab 7"),
        ),
        Center(
          child: Text("Tab 8"),
        ),
        Center(
          child: Text("Tab 9"),
        ),
      ],
    );
  }
}

class ListaDeTabs {
  ListaDeTabs(this.nomeTab);
  String nomeTab;
}

final tabs = [
  Tab(
    child: Text("Tab 1"),
  ),
  Tab(
    child: Text("Tab 2"),
  ),
  Tab(
    child: Text("Tab 3"),
  ),
  Tab(
    child: Text("Tab 4"),
  ),
  Tab(
    child: Text("Tab 5"),
  ),
  Tab(
    child: Text("Tab 6"),
  ),
  Tab(
    child: Text("Tab 7"),
  ),
  Tab(
    child: Text("Tab 8"),
  ),
  Tab(
    child: Text("Tab 9"),
  ),
];
