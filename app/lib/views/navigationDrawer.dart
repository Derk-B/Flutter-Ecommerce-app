import 'package:flutter/material.dart';
import '../shared/screenEnum.dart';

class NavigationDrawer extends StatelessWidget {
  final Function onNavigationSelect;
  const NavigationDrawer({Key? key, required this.onNavigationSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 167, 96, 49),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "ShoeApp by Derk Blom",
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        ListTile(
          leading: const Icon(Icons.shop),
          title: const Text("Products"),
          onTap: () {
            onNavigationSelect(Screen.shop);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text("Favorites"),
          onTap: () {
            onNavigationSelect(Screen.favorite);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.shopping_cart),
          title: const Text("Shoppincart"),
          onTap: () {
            onNavigationSelect(Screen.shoppingcart);
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(Icons.info),
          title: const Text("Info"),
          onTap: () {
            onNavigationSelect(Screen.info);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
