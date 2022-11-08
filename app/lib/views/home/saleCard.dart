import 'dart:math';
import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  final void Function()? onTap;
  const SaleCard({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => {},
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(8.0),
        width: MediaQuery.of(context).size.width,
        height: min(MediaQuery.of(context).size.height * 0.2, 200),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 241, 135, 255),
              Color.fromARGB(255, 77, 175, 255),
            ],
          ),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Row(children: [
          const Expanded(
            child: Text(
              "35% sale!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: 200,
            decoration: BoxDecoration(
              color: Color.fromARGB(94, 126, 230, 131),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ]),
      ),
    );
  }
}
