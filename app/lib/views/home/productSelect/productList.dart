import '/models/product.dart';
import '/services/database.dart';
import '/views/home/productSelect/productCard/productCard.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: getProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Expanded(
              child: GridView.count(
                physics: const BouncingScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: List.generate(
                  snapshot.data!.length,
                  (index) => ProductCard(
                      product: snapshot.data![index], onClick: () => {}),
                ),
              ),
            );
          } else {
            return const Expanded(child: Text("laden"));
          }
        });
  }
}
