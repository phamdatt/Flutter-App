// ignore_for_file: file_names

// ignore: unused_import
import 'package:dio/dio.dart';
import 'package:doric/models/ProductExample01.dart';

Future<List<ProductExample01>> getProductsByDio() async {
  Dio dio = Dio();
  final response =
      await dio.get("https://5f210aa9daa42f001666535e.mockapi.io/api/products");  
  if (response.statusCode == 200) {
    final data = (response.data as List)
        .map((e) => ProductExample01.fromJson(e))
        .toList();
    List<ProductExample01> products = data;
    return products;
  } else {
    throw Exception("Error");
  }
}
