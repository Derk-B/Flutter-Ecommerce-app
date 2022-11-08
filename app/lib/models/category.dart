import 'package:flutter/material.dart';

class Category {
  String text;
  Color color;

  Category(this.text, this.color);

  String getText() {
    return text;
  }

  void setText(String text) {
    this.text = text;
  }

  Color getColor() {
    return color;
  }

  void setColor(Color color) {
    this.color = color;
  }
}
