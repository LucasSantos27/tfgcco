import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class UserRepository extends GetConnect {
  // Future<User> login(Credentials credentials) async {
  //   final response = await get(
  //       "${EndPoints.register}${credentials.email}/${credentials.senha}");

  //   if (response.hasError) {
  //     throw Exception('Erro ao obter perfil');
  //   }

  //   return User.fromJson(response.body["response"][0]);
  // }

  Future<String> register(User user) async {
    String token = "";
    final response = await post(
      EndPoints.register,
      user.toJson(),
      decoder: (body) {
        token = body["token"];
      },
    );

    debugPrint('${token}');

    if (response.hasError) {
      throw Exception('Erro ao registar');
    }

    return token;
  }
}
