import '/models/product.dart';
import '/shared/favoriteButton.dart';
import '/views/home/productSelect/productCard/productCardInfo.dart';
import '/views/home/productSelect/productCard/productDiscount.dart';
import '/views/home/productSelect/productCard/productImage.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final void Function()? onClick;
  const ProductCard({Key? key, required this.product, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        child: Stack(children: [
          Column(
            children: [
              ProductImage(ref: product.imageUrl),
              ProductCardInfo(brand: product.brand, price: product.price),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const DiscountTag("-35%"),
              FavoriteButton(selected: false)
            ],
          )
        ]),
      ),
    );
  }
}
