import 'package:flutter/material.dart';

import 'Views/card_shop.dart';
import 'Views/select_produts.dart';
import 'classes/Strings.dart';

class MostrarProdutos extends StatelessWidget {
  const MostrarProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Strings.nomeAppBarHome),
        ),
        body: DefaultTabController(
          length: 2,
          child: Column(
            children: const [
              TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Comprar",
                    ),
                    Tab(
                      text: "Carrinho",
                    ),
                  ]),
              Expanded(
                  child: TabBarView(children: [SelectProduts(), CardShop()]))
            ],
          ),
        ));
  }
}
