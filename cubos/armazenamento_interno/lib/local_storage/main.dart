import 'package:armazenamento_interno/local_storage/repository/save_image_locally.dart';
import 'package:flutter/material.dart';

import '../sqflite/repository/atronomic_repository.dart';
import '../sqflite/repository/star_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final repository = StarRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder<List<StarModel>>(
            future: repository.getPlanets(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const Center(child: CircularProgressIndicator());
                default:
                  var _astronomics = snapshot.data ?? <StarModel>[];
                  return Column(
                    children: _astronomics.map((model) {
                      return ListTile(
                          trailing: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () async {
                              await SaveImageLocally.downloadFile(
                                  model.hdurl, model.title);
                            },
                            child: const Icon(Icons.arrow_downward_sharp),
                          ),
                          title: Text(model.title),
                          leading: SizedBox(
                              height: 50,
                              width: 50,
                              child: Image.network(model.hdurl)));
                    }).toList(),
                  );
              }
            }),
      ),
    );
  }
}
