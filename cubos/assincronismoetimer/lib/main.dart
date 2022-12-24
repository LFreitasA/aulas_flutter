import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool timerActivo = false;
  int sec = 11;
  int min = 10;
//  int tempoTotal = 25;
  String cronometro = "25:00";
  Timer? meuTimer;

  void iniciarTemporizador() {
    meuTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      sec--;
      if (sec <= -1) {
        sec = 59;
        min--;
      }

      print(sec);
      setState(() {
        sec;
        min;
        cronometro =
            "${min > 9 ? "$min" : "0$min"}:${sec > 9 ? "$sec" : "0$sec"}";
      });
    });
  }

  void parar() {
    meuTimer!.cancel();
  }

  /*late Timer tempo;
  @override
  void initState() {
    super.initState();
    tempo = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        timer;
      });
    });
  }
*/
/*      setState(() {
        if (sec == 0) {
          min--;
          sec = 59;
        } else {
          if (sec < 10) {}
        }
      });*/
  /*void temporizador() {}
  void iniciar() {
    int tempo = totalMins;
    Timer.periodic(Duration(seconds: 1), (timer) {
      tempo = totalMins + timer.tick;
      print(timer.tick);
      if (tempo > 0) {
        setState(() {
          cronometro = tempo > 9 ? "00:$tempo" : "00:0$tempo";
        });
      } else {
        cronometro = tempo > 9 ? "00:$tempo" : "00:0$tempo";
      }
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Column(children: [
          const Text("PomoCubos"),
          Text(timerActivo ? "ativo" : "inativo"),
          Row(
            children: [
              /*           Text(min.toString()),
              Text(":"),
              Text(sec.toStringAsFixed(2)),*/
              Text(cronometro),
            ],
          ),
          TextButton(
              onPressed: () {
                if (!timerActivo) {
                  setState(() {
                    sec = 00;
                    min = 25;
                    cronometro = "$min:0$sec";
                  });

                  iniciarTemporizador();
                } else {
                  parar();
                }
                setState(() {
                  timerActivo = !timerActivo;
                });
              },
              child: Text(timerActivo ? "Parar" : "Iniciar"))
        ]),
      ),
    );
  }
}
