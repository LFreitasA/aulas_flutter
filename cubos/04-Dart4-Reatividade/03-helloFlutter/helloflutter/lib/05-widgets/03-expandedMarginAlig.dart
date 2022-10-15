import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloflutter/03AulaReatividade/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment
                .start, //aqui define em qual parte da tela vai estar a coluna
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.green,
                height: 200,
                width: 200,
              ),
              Container(
                color: Color.fromARGB(255, 54, 67, 244),
                height: 150,
                width: 300,
              ),
              Container(
                color: Color.fromARGB(255, 14, 201, 70),
                width: 200,
                height: 100,
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment
                .center, //aqui define em qual parte da tela vai estar a coluna
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: Colors.green,
                height: 150,
                width: 200,
              ),
              Container(
                color: Color.fromARGB(255, 54, 67, 244),
                height: 150,
                width: 300,
              ),
              Container(
                color: Color.fromARGB(255, 14, 201, 70),
                width: 200,
                height: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Expanded(
            //Usa todo o resto da tela
            child: Container(
              color: Colors.grey,
              margin: EdgeInsets.all(50),
              child: Text("ola mundo novo"),
              padding: EdgeInsets.fromLTRB(50, 50, 50, 10),
            ),
          )
        ],
      ),
    );
  }
}
