import 'package:dio/dio.dart';
import 'package:doric/models/Users.dart';

Future<Users> getUserCallApi() async {
  Dio dio = Dio();
  final response = await dio.get('https://api.github.com/users/0');
  if (response.statusCode == 200) {
    var data = response.data;
    return Users.fromJson(data);
  } else {
    throw Exception("Error");
  }
}
