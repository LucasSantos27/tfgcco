import 'package:get/get_connect/connect.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class UserRepository extends GetConnect {
  Future<String> login(Credentials credentials) async {
    final response = await post(
      EndPoints.login,
      credentials.toJson(),
    );

    if (response.hasError) {
      throw Exception('Erro ao logar');
    }

    return response.body['token'];
  }

  Future<String> register(User user) async {
    final response = await post(
      EndPoints.register,
      user.toJson(),
    );

    if (response.hasError) {
      throw Exception('Erro ao registar');
    }

    return response.body['token'];
  }
}
