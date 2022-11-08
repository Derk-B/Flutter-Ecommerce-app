import 'package:flutter/material.dart';
import '../../../models/category.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final void Function()? onClick;
  const CategoryCard({Key? key, required this.category, this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
          child: Row(children: [
            Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: category.getColor(),
              ),
            ),
            const SizedBox(width: 5.0),
            Text(category.getText()),
          ]),
        ),
      ),
    );
  }
}
