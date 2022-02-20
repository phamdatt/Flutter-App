import 'package:my_app/models/Category.dart';
import 'package:dio/dio.dart';

Future<List<Category>> fetchCategory() async {
  String url = 'https://5f210aa9daa42f001666535e.mockapi.io/api/categories';
  Dio dio = Dio();
  final response = await dio.get(url);
  if (response.statusCode == 200) {
    final data =
        (response.data as List).map((e) => Category.fromJson(e)).toList();
    List<Category> categories = data;
    return categories;
  } else {
    throw Exception("Error");
  }
}
