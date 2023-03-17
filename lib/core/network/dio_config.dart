import 'package:dio/dio.dart';

// SO THAT DIO CONFIG(TIME CONTROL)
class DioConfig {
  Dio createRequest() {
    Dio dio = Dio(BaseOptions(
        validateStatus: (int? statusCode) {
          if (statusCode != null) {
            if (statusCode >= 100 && statusCode <= 511) {
              return true;
            } else {
              return false;
            }
          } else {
            return false;
          }
        },
        receiveDataWhenStatusError: true));

    // Time out congifration
    dio.options.connectTimeout = const Duration(seconds: 50);
    dio.options.receiveTimeout = const Duration(seconds: 50);
    dio.options.sendTimeout = const Duration(seconds: 50);
    return dio;
  }
}
