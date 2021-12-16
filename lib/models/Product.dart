import 'package:flutter/material.dart';
import '../app_ui.dart';

class Product {
  final String title, image, description;
  final int? price, size, id;
  final Color? color;
  Product(
      {this.id,
      required this.image,
      required this.description,
      this.price,
      this.size,
      required this.title,
      this.color});
}
