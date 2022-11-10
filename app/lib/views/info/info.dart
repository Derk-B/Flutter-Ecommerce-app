import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("An ecommerce app by Derk Blom"),
          const Text("Created using Flutter, Krita and Adobe XD"),
          Expanded(
            child: Container(),
          ),
          const Text(
              "Autumn icons created by iconixar - Flaticon\nwww.flaticon.com/free-icons/autumn")
        ],
      ),
    );
  }
}
