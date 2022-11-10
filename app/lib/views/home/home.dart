import 'package:flutter/material.dart';
import 'package:shoe_app/views/home/categorySelect/categoryList.dart';
import 'package:shoe_app/views/home/productSelect/productList.dart';

import 'saleCard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SaleCard(),
        CategoryList(),
        const ProductList(),
      ],
    );
  }
}
