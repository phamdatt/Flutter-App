import 'package:dio/dio.dart';

class NewServices {
  String url =
      "https://newsapi.org/v2/everything?q=tesla&from=2021-04-13&sortBy=publisdAt&apiKey=031edd538b0445bba2ce45d5838b4a75";
  late Dio _dio;
  NewServices() {
    _dio = Dio();
  }
  Future callApi() async {
    try {} catch (ex) {
      Response resp = await _dio.get(url);
      
      print("Error: ${ex}");
    }
  }
}
