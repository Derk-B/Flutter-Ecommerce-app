import 'package:shoe_app/shared/screenEnum.dart';
import 'package:shoe_app/views/home/home.dart';
import 'package:shoe_app/views/info/info.dart';
import 'package:shoe_app/views/navigationDrawer.dart';

import 'services/initDatabase.dart';
import 'views/home/appBar.dart';
import 'views/home/categorySelect/categoryList.dart';
import 'views/home/productSelect/productList.dart';
import 'views/home/saleCard.dart';
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
      home: FutureBuilder(
          future: createDatabase(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return const MyHomePage(title: 'DB');
            } else {
              return const LoadingScreen();
            }
          }),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Screen _selectedScreen = Screen.shop;
  void _onNavigationSelect(Screen screen) {
    setState(() {
      _selectedScreen = screen;
    });
  }

  Widget getScreen() {
    switch (_selectedScreen) {
      case Screen.shop:
        return const Home();
      case Screen.shoppingcart:
        return Container();
      case Screen.favorite:
        return Container();
      case Screen.info:
        return const Info();
      default:
        return const Home();
    }
  }

  Widget getTitle() {
    switch (_selectedScreen) {
      case Screen.shop:
        return Row(
          children: [
            const Expanded(
              child: Text("Products"),
            ),
            IconButton(
              splashRadius: 25.0,
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
        );
      case Screen.shoppingcart:
        return const Text("Shoppingcart");
      case Screen.favorite:
        return const Text("Favorites");
      case Screen.info:
        return const Text("Info");
      default:
        return const Text("Shoeapp");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StandardAppBar(title: getTitle()),
      drawer: Drawer(
        child: NavigationDrawer(
          onNavigationSelect: _onNavigationSelect,
        ),
      ),
      body: getScreen(),
    );
  }
}
