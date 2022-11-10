import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<void> createDatabase() async {
  var databasePath = await getDatabasesPath();
  String path = join(databasePath, "shoes.db");

  try {
    await deleteDatabase(path);
  } catch (_) {}

  Database database = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
    await db.execute(
        "CREATE TABLE products (id INTEGER PRIMARY KEY, brand TEXT, descripion TEXT, color TEXT, price REAL, imageURL TEXT)");
  });

  await database.transaction((txn) async {
    await txn.rawInsert(
        "INSERT INTO products VALUES(0, 'Zuma', 'Mooie grijze schoen', 'grey', 69.99, 'zuma_grey_0.png')");
    await txn.rawInsert(
        "INSERT INTO products VALUES(1, 'Mike', 'Mooie rode schoen', 'red', 49.99, 'mike_red_1.png')");
    await txn.rawInsert(
        "INSERT INTO products VALUES(2, 'Mike', 'Mooie zwarte schoen', 'black', 65.99, 'mike_black_2.png')");
    await txn.rawInsert(
        "INSERT INTO products VALUES(3, 'Bdidas', 'Mooie blauwe schoen', 'blue', 59.99, 'bdidas_blue_3.png')");
    await txn.rawInsert(
        "INSERT INTO products VALUES(4, 'Bdidas', 'Mooie zwarte schoen', 'black', 59.99, 'bdidas_black_4.png')");
    await txn.rawInsert(
        "INSERT INTO products VALUES(5, 'Zuma', 'Mooie groene schoen', 'green', 69.99, 'zuma_green_5.png')");

    database.close();
  });
}
