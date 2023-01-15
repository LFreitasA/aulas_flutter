import 'package:flutter/material.dart';

import '../classes/carrinho_de_compras.dart';
import '../classes/lista_de_produtos.dart';

class SelectProduts extends StatelessWidget {
  const SelectProduts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: listaDeProdutos.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Row(
                children: [
                  Image.network(
                    listaDeProdutos[index].imagem,
                    height: 100,
                    width: 100,
                  ),
                  Column(
                    children: [
                      Text(listaDeProdutos[index].nome),
                      Text(listaDeProdutos[index].valor.toString())
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        carrinhoDeCompras.add(listaDeProdutos[index]);
                      },
                      icon: const Icon(Icons.shopify))
                ],
              ),
            );
          }),
    );
  }
}
