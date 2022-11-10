import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  final String ref;
  const ProductImage({Key? key, required this.ref}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
          color: Colors.white,
        ),
        child: Image.asset(
          'assets/images/$ref',
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}
