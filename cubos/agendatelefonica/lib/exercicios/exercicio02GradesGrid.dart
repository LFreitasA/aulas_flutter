import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({super.key});
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.room_outlined,
                        color: Colors.blue,
                      ),
                      Icon(
                        Icons.room_outlined,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.room_outlined,
                        color: Colors.blue,
                      ),
                      Icon(Icons.arrow_drop_down),
                      Icon(
                        Icons.room_outlined,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 125,
                  width: 300,
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: GridView.builder(
                      gridDelegate: gridDelegate,
                      itemBuilder: (context, index) {
                        return Card(
                          child: GridTile(
                            child: Stack(
                              children: [
                                Container(
                                  color: Colors.red,
                                  alignment: Alignment.center,
                                  child: Text(
                                    "",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 24),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
