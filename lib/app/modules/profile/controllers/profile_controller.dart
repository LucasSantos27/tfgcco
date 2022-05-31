import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/models/profile_tile.dart';
import 'package:tfg_cco/app/data/repositories/user_repository.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  final user = Rxn<User>();
  final userRepository = UserRepository();
  final isLoading = false.obs;

  final profileTiles = [
    ProfileTile(
      leading: Icons.account_box,
      title: 'Editar Perfil',
      onTap: () {},
    ),
    ProfileTile(
      leading: Icons.credit_card,
      title: 'Planos',
      onTap: () {},
    ),
    ProfileTile(
      leading: Icons.logout,
      title: 'Sair',
      onTap: () => Get.offAllNamed(Routes.LOGIN),
    ),
  ];

  Future<void> getUserInfo() async {
    isLoading.value = true;
    try {
      user.value = await userRepository.getInfo();
      isLoading.value = false;
    } catch (e) {
      Get.snackbar('Error', e.toString());
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getUserInfo();
    super.onInit();
  }
}
