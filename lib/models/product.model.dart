import 'package:get/get.dart';

class ProductModel {
  ProductModel({
    int id = 0,
    String name = '',
    String category = '',
    double price = 0,
    String image = '',
    String description = '',
  }) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.price = price;
    this.image = image;
    this.description = description;
    this.like = false;
  }

  RxInt _id = 0.obs;
  set id(int value) => _id.value = value;
  int get id => _id.value;

  RxString _name = ''.obs;
  set name(String value) => _name.value = value;
  String get name => _name.value;

  RxString _category = ''.obs;
  set category(String value) => _category.value = value;
  String get category => _category.value;

  RxDouble _price = 0.0.obs;
  set price(double value) => _price.value = value;
  double get price => _price.value;

  RxString _image = ''.obs;
  set image(String value) => _image.value = value;
  String get image => _image.value;

  RxString _description = ''.obs;
  set description(String value) => _description.value = value;
  String get description => _description.value;

  RxBool _like = false.obs;
  set like(bool value) => _like.value = value;
  bool get like => _like.value;

  String get dollar {
    return this.price.toStringAsFixed(2) + " SAR";
  }
  // U\$
}
