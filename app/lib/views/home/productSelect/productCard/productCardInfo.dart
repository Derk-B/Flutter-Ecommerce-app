import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProductCardInfo extends StatelessWidget {
  final String brand;
  final double price;
  const ProductCardInfo({Key? key, required this.brand, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BrandName(brand),
          ProductPriceTag(price),
        ],
      ),
    );
  }
}

class BrandName extends StatelessWidget {
  final String brand;
  const BrandName(this.brand, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      brand,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

class ProductPriceTag extends StatelessWidget {
  final double price;
  const ProductPriceTag(this.price, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat.currency(locale: "nl/NL", symbol: "€");
    return Text(
      numberFormat.format(price),
      style: const TextStyle(fontSize: 16.0),
    );
  }
}
