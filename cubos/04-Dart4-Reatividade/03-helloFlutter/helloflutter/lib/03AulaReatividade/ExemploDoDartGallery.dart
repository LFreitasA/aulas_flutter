import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

var cor = "blue";

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(
        color: corDoFundo(cor),
        child: Center(
          child: Text('Hello fluter',
              style: TextStyle(color: Colors.white, fontSize: 60)),
        ),
      ),
    );
  }
}

// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text("localization.demoAppBarTitle"),
        actions: [
          IconButton(
            tooltip: "localization.starterAppTooltipFavorite",
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: "localization.starterAppTooltipSearch",
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "localization.demoNavigationRailFirst",
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "localization.demoNavigationRailSecond",
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    "localization.demoNavigationRailThird",
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: Center(
        child: Text(
          "localization.cupertinoTabBarHomeTab",
        ),
      ),
    );
  }
}

dynamic corDoFundo(cor) {
  if (cor == "blue") {
    cor = Colors.blue;
  } else {
    cor = Colors.black;
  }
  return cor;
}
