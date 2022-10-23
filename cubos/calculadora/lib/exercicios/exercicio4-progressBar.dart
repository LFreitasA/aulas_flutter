import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Colors.red,
        home: UploadImage());
  }
}

class UploadImage extends StatefulWidget {
  const UploadImage({super.key});

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  double progresso = 0;
  Color minhaCor = Colors.orange;
  String texto = "Clique para iniciar o upload";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 231, 232, 191),
      child: SafeArea(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                print("object");
                print(progresso);
                setState(() {
                  if (progresso >= 1) {
                    progresso = 0;
                    texto = "Clique para iniciar o upload";
                  } else {
                    progresso += 0.25;
                    texto = "${progresso * 100} %";
                    if (progresso >= 1) {
                      texto = "Upload completo!";
                      minhaCor = Colors.green;
                    }
                  }
                });
              },
              child: Container(
                width: 100,
                child: Card(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Icon(
                          Icons.upload,
                          color: Colors.white,
                        ),
                        Text(
                          "Upload",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )),
              ),
            ),
            Text(
              texto,
              style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.none,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.yellow,
                color: minhaCor,
                value: progresso,
              ),
            ))
          ],
        ),
      ),
    );
  }
}
