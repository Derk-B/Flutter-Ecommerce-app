import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  bool selected = false;
  FavoriteButton({Key? key, selected}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.selected = !widget.selected;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: widget.selected
            ? const Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : const Icon(
                Icons.favorite_border,
              ),
      ),
    );
  }
}
