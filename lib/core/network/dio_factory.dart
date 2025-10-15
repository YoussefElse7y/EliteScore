import 'package:dio/dio.dart';
import 'package:football_app/core/network/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    Duration timeout = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout
        ..options.baseUrl = ApiConstants.baseUrl
        ..options.headers = {
          'x-rapidapi-key': ApiConstants.apiKey,
          'x-rapidapi-host': ApiConstants.apiHost,
        };

      addDioInterceptors();
    }

    return dio!;
  }

  static void addDioInterceptors() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
      ),
    );
  }
}
