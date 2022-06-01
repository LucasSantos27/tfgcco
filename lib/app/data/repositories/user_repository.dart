import 'package:get/get_connect/connect.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class UserRepository extends GetConnect {
  Future<String> login(Credentials credentials) async {
    final response = await post(
      EndPoints.login,
      credentials.toJson(),
    );

    if (response.hasError) {
      throw Exception('Erro ao logar: ${response.body['message']}');
    }

    return response.body['token'];
  }

  Future<String> register(User user) async {
    final response = await post(
      EndPoints.register,
      user.toJson(),
    );

    if (response.hasError) {
      throw Exception('Erro ao registar: ${response.body['message']}');
    }

    return response.body['token'];
  }

  Future<User> getInfo() async {
    final storage = GetStorage();
    final token = storage.read('token');
    final response = await get(
      EndPoints.userInfo,
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.hasError) {
      throw Exception('Erro ao receber informações do usuário');
    }

    return User.fromJson(response.body);
  }
}
