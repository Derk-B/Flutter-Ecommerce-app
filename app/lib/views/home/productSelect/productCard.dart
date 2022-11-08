import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String text;
  final void Function()? onClick;
  const ProductCard({Key? key, required this.text, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Icon(Icons.thumb_up),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
