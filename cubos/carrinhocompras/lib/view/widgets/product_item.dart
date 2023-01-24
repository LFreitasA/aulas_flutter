import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/product_model.dart';
import '../../viewmodel/products_view_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {Key? key,
      @required required this.screenSize,
      required this.image,
      required this.itemName})
      : super(key: key);

  final Size screenSize;
  final String image, itemName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: screenSize.height * 0.2,
      width: screenSize.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.blue[200]!.withOpacity(0.3),
                offset: const Offset(0, 0),
                blurRadius: 3,
                spreadRadius: 3)
          ]),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              height: screenSize.height * 0.13,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(itemName),
          ),
          Consumer<ProductsViewModel>(
            builder: (context, viewmodel, child) {
              return InkWell(
                onTap: () {
                  viewmodel.add(ProductModel(image: image, name: itemName));
                },
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                      height: screenSize.height * 0.03,
                      width: screenSize.width * 0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.blue),
                      child: const Center(
                        child: Text(
                          "ADD",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
