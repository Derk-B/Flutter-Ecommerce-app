// ignore_for_file: unnecessary_this

class Product {
  String? _brand;
  String? _description;
  String? _color;
  double? _price;
  String? _imageURL;

  Product.fromJson(Map data) {
    this._color = data["color"];
    this._brand = data["brand"];
    this._description = data["description"];
    this._price = data["price"];
    this._imageURL = data["imageURL"];
  }

  get color => this._color;

  set color(value) => this._color = value;

  get brand => this._brand;

  set brand(value) => this._brand = value;

  get description => this._description;

  set description(value) => this._description = value;

  get price => this._price;

  set price(value) => this._price = value;

  get imageUrl => this._imageURL;

  set imageUrl(value) => this._imageURL = value;
}
