import 'package:flutter/material.dart';

class StandardAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const StandardAppBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              splashRadius: 25.0,
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              )),
          Text(title),
          IconButton(
            splashRadius: 25.0,
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
