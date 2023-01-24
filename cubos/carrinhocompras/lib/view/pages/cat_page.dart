import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/products_view_model.dart';
import '../widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Carrinho de Compras'),
      ),
      body: SafeArea(
        child: SizedBox(
          height: screenSize.height,
          width: double.infinity,
          child: Scaffold(
            body: Consumer<ProductsViewModel>(
                builder: (context, viewmodel, child) {
              return ListView.builder(
                itemCount: viewmodel.productsList.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: UniqueKey(),
                    direction: DismissDirection.horizontal,
                    background: Container(
                      color: Colors.red,
                    ),
                    onDismissed: (direction) {
                      if (direction == DismissDirection.startToEnd) {
                        viewmodel.remove(viewmodel.productsList[index]);
                      }
                    },
                    child: CartItem(
                      image: viewmodel.productsList[index].image,
                      itemName: viewmodel.productsList[index].name,
                    ),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
