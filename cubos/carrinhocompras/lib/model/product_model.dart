import 'o_product.dart';

class ProductModel implements IProduct {
  ProductModel({
    required this.name,
    required this.image,
  });

  @override
  final String name;
  @override
  final String image;

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
      };
}
