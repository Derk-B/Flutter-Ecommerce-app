import 'package:sqflite/sqflite.dart';
import '/models/product.dart';
import 'package:path/path.dart';

Future<List<Product>> getProducts() async {
  var db = await openDatabase("shoes.db");

  List<Product>? result;

  try {
    List<Map> list = await db.rawQuery("SELECT * FROM products");
    result = list.map((e) => Product.fromJson(e)).toList();
  } catch (error) {
    await db.close();
  }

  await db.close();
  return result ?? [];
}
