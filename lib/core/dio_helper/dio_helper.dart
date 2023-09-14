import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: "https://newsapi.org/",
      receiveDataWhenStatusError: true,
      connectTimeout: 5,
      //connectTimeout: Duration(seconds: 5),
    ));
  }

  static Future<Response> getDate({
    required String url,
    required Map<String, dynamic> query,
  }) async {
    return await dio.get(url, queryParameters: query);
  }
}
