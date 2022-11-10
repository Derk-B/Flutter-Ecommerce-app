import '/views/home/categorySelect/categoryCard.dart';
import 'package:flutter/material.dart';
import '/models/category.dart';

class CategoryList extends StatelessWidget {
  CategoryList({Key? key}) : super(key: key);
  final List<Category> categories = [
    Category("Rood", const Color.fromARGB(255, 255, 0, 0)),
    Category("Paars", const Color.fromARGB(255, 255, 0, 255)),
    Category("Blauw", const Color.fromARGB(255, 0, 0, 255)),
    Category("Geel", const Color.fromARGB(255, 255, 255, 0)),
    Category("Wit", const Color.fromARGB(255, 255, 255, 255)),
    Category("Groen", const Color.fromARGB(255, 00, 255, 0)),
    Category("Zwart", const Color.fromARGB(255, 0, 0, 0)),
    Category("Grijs", const Color.fromARGB(255, 85, 85, 85)),
    Category("Bruin", const Color.fromARGB(255, 105, 56, 0)),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      height: 50,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: ((context, index) {
          return CategoryCard(
            category: categories[index],
            onClick: () {},
          );
        }),
      ),
    );
  }
}
