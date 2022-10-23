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
      home: Container(color: Colors.grey, child: SafeArea(child: MeuCard())),
    );
  }
}

class MeuCard extends StatelessWidget {
  MeuCard({super.key});
  final nome = "Leonardo Freitas";
  double preco = 0.041;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Container(
          height: 400,
          width: 300,
          child: Card(
              color: Color.fromARGB(255, 3, 36, 63),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                        'https://camo.githubusercontent.com/dc30ec513e394f4863cdd26fcf702fb5519280a1f2ed33736771477e64d005dc/68747470733a2f2f692e696d6775722e636f6d2f773339717a61712e706e67'),
                    const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(
                        "Equilibrium#3429",
                        style: TextStyle(
                            color: Color.fromARGB(255, 122, 203, 240),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text(
                      "Nossa colecao equilibrium promove calma e balanco",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$preco ETH",
                          style: const TextStyle(
                            color: Color.fromARGB(255, 122, 203, 240),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.av_timer_sharp,
                                color: Colors.lightBlueAccent,
                              ),
                              Text(
                                "Restam 3 dias",
                                style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: ClipRRect(
                            child: Image.network(
                                'https://media-exp1.licdn.com/dms/image/C4D03AQHfcaPMS_EgSg/profile-displayphoto-shrink_800_800/0/1616904723047?e=1672272000&v=beta&t=Q9ZVjAzPOii0MNk3vnSNg6aQveP91NA1sAcQfb3_QaA'),
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Criado por ",
                            style: TextStyle(color: Colors.grey, fontSize: 8),
                          ),
                        ),
                        Text(
                          nome,
                          style:
                              const TextStyle(color: Colors.white, fontSize: 8),
                        )
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
