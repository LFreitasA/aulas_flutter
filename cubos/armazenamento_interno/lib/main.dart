import 'package:armazenamento_interno/repository/astronomic_picture.dart';
import 'package:armazenamento_interno/repository/picture.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Provider(create: (context) => PictureDay(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ImageDoDia(),
      ),
    );
  }
}

class ImageDoDia extends StatelessWidget {
  const ImageDoDia({super.key});

  @override
  Widget build(BuildContext context) {
    final resposta = context.read<PictureDay>();
    return FutureBuilder<Picture>(
      future: resposta.dioRequest(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final dados = snapshot.data!;
          print("snapshot");
          print(snapshot.data!.date);
          return Column(
            children: [
              Text(dados.date),
              Container(
                height: 500,
                width: 500,
                child: Image.network(dados.url),
              ),
              Text(dados.title),
              ElevatedButton.icon(
                onPressed: null,
                icon: Icon(Icons.abc),
                label: Text("Baixar imagem"),
              )
            ],
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
