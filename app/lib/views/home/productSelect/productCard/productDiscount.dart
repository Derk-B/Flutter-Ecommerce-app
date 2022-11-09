import 'package:flutter/material.dart';

class DiscountTag extends StatelessWidget {
  final String discount;
  const DiscountTag(this.discount, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        discount,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}
