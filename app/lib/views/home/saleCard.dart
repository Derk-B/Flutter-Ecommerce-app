import 'dart:math';
import 'package:flutter/material.dart';

class SaleCard extends StatelessWidget {
  final void Function()? onTap;
  const SaleCard({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => {},
      child: AutumnBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Autumn sale",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Color.fromARGB(255, 92, 53, 38)),
                ),
                LeafImage(),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                LeafImage(),
                Text(
                  "35% sale!    ",
                  style: TextStyle(
                    fontSize: 34,
                    color: Color.fromARGB(255, 92, 53, 38),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AutumnBackground extends StatelessWidget {
  final Widget child;
  const AutumnBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.4, 0.8],
          colors: <Color>[
            Color.fromARGB(255, 206, 136, 79),
            Color.fromARGB(255, 190, 98, 36),
          ],
        ),
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: child,
    );
  }
}

class LeafImage extends StatelessWidget {
  const LeafImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/leaf.png",
      width: 50,
    );
  }
}
