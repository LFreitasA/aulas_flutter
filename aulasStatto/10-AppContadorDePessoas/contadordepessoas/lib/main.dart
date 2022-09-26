import 'package:flutter/material.dart';

void main() {
  int contador = 0;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

int contador = 0;
String lotacao = 'Pode Entrar!';
void decrement() {
  contador--;
  print(contador);
}

void increment() {
  contador++;
  print(contador);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/leozinho.jpg'))),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(lotacao,
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 32,
            ),
            Text(contador.toString(),
                style: TextStyle(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: decrement,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        fixedSize: const Size(100, 100),
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    //padding: const EdgeInsets.all(32)),
                    child: Text(
                      'Saiu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )),
                TextButton(
                    onPressed: increment,
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        //padding: const EdgeInsets.all(32)),
                        fixedSize: const Size(100, 100),
                        primary: Colors.red,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24))),
                    child: Text(
                      'entrou',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    )),
              ],
            )
          ]),
        ));
  }
}

//stless


