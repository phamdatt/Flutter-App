// ignore_for_file: file_names

// ignore: unused_import
import 'package:my_app/models/Product.dart';
import 'package:my_app/models/ProductExample01.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<ProductExample01>> getProducts() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/products"; // const la phai co gia tri khoi tao khi compier
  final resp = await http.get(Uri.parse(
      apiUrl)); //final cho nay nhan gia tri sau do khong duoc thay doi
  if (resp.statusCode == 200) {
    List<ProductExample01> products = (json.decode(resp.body) as List)
        .map((data) => ProductExample01.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception('Fail to load');
  }
}
