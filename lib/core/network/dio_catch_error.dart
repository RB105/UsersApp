import 'package:dio/dio.dart';
// FOR ERROR CATCH \\
class DioCatchErrorConfig {
  String catchError(DioError e) {
    switch (e.type) {
      case DioErrorType.connectionTimeout:
        return "Connect Timeout";
      case DioErrorType.receiveTimeout:
        return "Receive Timeout";
      case DioErrorType.sendTimeout:
        return "Send Timeout";
      case DioErrorType.unknown:
        return "No internet connection";
      default:
      return  "Something went wrong";
    }
  }
}