
// ignore_for_file: file_names

// ignore: unused_import
import 'package:my_app/models/Category.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

Future<List<Category>> getCategories()async{
  const String apiUrl ="https://5f210aa9daa42f001666535e.mockapi.io/api/categories";// const la phai co gia tri khoi tao khi compier
  final resp =await http.get(Uri.parse(apiUrl));//final cho nay nhan gia tri sau do khong duoc thay doi
  if(resp.statusCode == 200){
    List<Category> categories =(json.decode(resp.body) as List).map((data) => Category.fromJson(data)).toList();
  return categories;
  }else{
    throw Exception('Fail to load');
  }
}