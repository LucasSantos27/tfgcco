import 'package:flutter/material.dart';
import 'package:get/get_connect/connect.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class UserRepository extends GetConnect {
  Future<String> login(Credentials credentials) async {
    String token = "";

    final response = await post(
      EndPoints.login,
      credentials.toJson(),
      decoder: (body) {
        token = body["token"];
      },
    );

    debugPrint('${token}');

    if (response.hasError) {
      throw Exception('Erro ao logar');
    }

    return token;
  }

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
