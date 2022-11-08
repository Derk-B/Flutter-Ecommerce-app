import 'package:app/views/home/appBar.dart';
import 'package:app/views/home/categorySelect/categoryList.dart';
import 'package:app/views/home/productSelect/productList.dart';
import 'package:app/views/home/saleCard.dart';
import 'package:flutter/material.dart';
import 'shared/primaryColor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DBShoes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: colorCustom),
      ),
      home: const MyHomePage(title: 'DB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const StandardAppBar(title: "DB"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SaleCard(),
            CategoryList(),
            ProductList(),
          ],
        ),
      ),
    );
  }
}
