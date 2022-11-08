import 'package:app/views/home/productSelect/productCard.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  ProductList({Key? key}) : super(key: key);
  final List<String> products = [
    "product1",
    "product2",
    "product3",
    "product4",
    "product1",
    "product2",
    "product3",
    "product4"
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        children: List.generate(
          products.length,
          (index) => ProductCard(text: products[index], onClick: () => {}),
        ),
      ),
    );
  }
}
