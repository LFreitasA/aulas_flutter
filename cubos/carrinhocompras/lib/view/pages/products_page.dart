import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodel/products_view_model.dart';
import '../widgets/cart_counter.dart';
import '../widgets/product_item.dart';
import 'cat_page.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CartScreen()));
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 0, right: 15, top: 8, bottom: 8),
              child: Consumer<ProductsViewModel>(
                  builder: (context, viewmodel, child) {
                return Stack(
                  children: [
                    const Align(
                        alignment: Alignment.bottomCenter,
                        child: Icon(Icons.shopping_cart_rounded,
                            color: Colors.blue, size: 25)),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: CartCounter(
                        count: viewmodel.productsList.length.toString(),
                      ),
                    )
                  ],
                );
              }),
            ),
          )
        ],
        title: const Center(
          child: Text(
            "Mercado",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: SizedBox(
          height: screenSize.height * 0.24,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _products.length,
            itemBuilder: (context, index) => ProductItem(
              screenSize: screenSize,
              image: _products[index]["image"]!,
              itemName: _products[index]["name"]!,
            ),
          ),
        ),
      )),
    );
  }
}

final _products = [
  {"name": "Frutas", "image": "assets/fruits.jpg"},
  {"name": "Chamito", "image": "assets/chamito.jpeg"},
  {"name": "Água", "image": "assets/agua.jpg"},
];
