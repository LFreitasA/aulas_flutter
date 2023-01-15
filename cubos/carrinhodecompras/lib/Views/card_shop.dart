import 'package:carrinhodecompras/classes/carrinho_de_compras.dart';
import 'package:flutter/cupertino.dart';

class CardShop extends StatelessWidget {
  const CardShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text("Itens selecionados"),
      carrinhoDeCompras.length > 0
          ? Text("Valor total = ${somarValores()}")
          : Text(""),
      Expanded(
        child: ListView.builder(
            itemCount: carrinhoDeCompras.length,
            itemBuilder: (context, index) {
              return Column(children: [
                Row(
                  children: [
                    Image.network(
                      carrinhoDeCompras[index].imagem,
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      children: [
                        Text(carrinhoDeCompras[index].nome),
                        Text(carrinhoDeCompras[index].valor.toString())
                      ],
                    ),
                  ],
                )
              ]);
            }),
      ),
    ]);
  }
}
