import 'package:dio/dio.dart';
import 'http_config.dart';

class HttpRequest {
  static Future request(String url, { String method = 'get', Map<String, dynamic>? params }) async {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: timeout
    );
    final dio = Dio(baseOptions);
    Options options = Options(method: method);
    try {
      final result = await dio.request(url, options: options, queryParameters: params);
      return result;
    } on DioError catch(err) {
      rethrow;
    }
  }
}