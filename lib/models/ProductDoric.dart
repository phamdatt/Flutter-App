import 'package:flutter/material.dart';
import 'package:doric/models/Product.dart';

class ProductDoric {
  final String productName;
  final String productImage;
  final double productPrice;
  final Color bgColor;
  const ProductDoric(
      {required this.productName,
      required this.productImage,
      required this.productPrice,
      this.bgColor = const Color(0xFFEFEFF2)});
}

List<ProductDoric> product_popular = [
  ProductDoric(
      productImage: "assets/images/product_2.png",
      productName: "Long Slee Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_0.png",
      productName: "Casual Henley Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_1.png",
      productName: "Curved Hem Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_3.png",
      productName: "Long Slee Shirts",
      productPrice: 165),
];
List<ProductDoric> product_arrial = [
  ProductDoric(
      productImage: "assets/images/product_0.png",
      productName: "Long Slee Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_1.png",
      productName: "Casual Henley Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_2.png",
      productName: "Curved Hem Shirts",
      productPrice: 165),
  ProductDoric(
      productImage: "assets/images/product_3.png",
      productName: "Long Slee Shirts",
      productPrice: 165),
];
