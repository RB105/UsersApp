import 'package:dio/dio.dart';
import 'package:users/model/user_model.dart';
import 'package:users/network/dio_config.dart';

import '../network/dio_catch_error.dart';

class UserService {
  Future<dynamic> getUsers() async {
    try {
      Response response = await DioConfig()
          .createRequest()
          .get(("https://jsonplaceholder.typicode.com/users"));
      if (response.statusCode == 200) {
        return (response.data as List)
            .map((e) => UserModel.fromJson(e))
            .toList();
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioCatchErrorConfig().catchError(e);
    }
  }
}
