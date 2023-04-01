import 'package:dio/dio.dart';
import 'package:netflix_app/infrastructure/core/api_base_url.dart';
import 'package:netflix_app/infrastructure/core/api_key.dart';

class AppDio {
  static final AppDio _singleton = AppDio._internal();
  late Dio
      _dio; // Marking _dio as 'late' because it will be initialized in the constructor

  factory AppDio() {
    return _singleton;
  }

  AppDio._internal() {
    _dio = Dio(BaseOptions(baseUrl: apiBaseUrl));

    // Add request interceptor
    _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      // Modify the request before it is sent
      options.queryParameters['api_key'] = apiKey; // Add a query parameter
      handler.next(options); // Pass the request on to the next interceptor
    }));

    // Add response interceptor
    _dio.interceptors.add(InterceptorsWrapper(onResponse: (response, handler) {
      // Modify the response after it is received
      print(response.statusCode);

      handler.next(response); // Pass the response on to the next interceptor
    }));
  }

  Dio get instance => _dio;
}
