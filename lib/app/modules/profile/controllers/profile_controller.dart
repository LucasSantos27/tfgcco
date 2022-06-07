import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/models/profile_tile.dart';
import 'package:tfg_cco/app/data/repositories/user_repository.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  final user = Rxn<User>();
  final userRepository = UserRepository();
  final isLoading = false.obs;

  final isExistsToken = false.obs;

  final profileTiles = [
    ProfileTile(
      leading: Icons.account_box,
      title: 'Editar Perfil',
      onTap: () => Get.toNamed(Routes.EDIT),
    ),
    ProfileTile(
      leading: Icons.credit_card,
      title: 'Planos',
      onTap: () => Get.toNamed(Routes.PLANS),
    ),
    ProfileTile(
      leading: Icons.logout,
      title: 'Sair',
      onTap: () {
        final storage = GetStorage();
        storage.write('token', null);
        Get.offAllNamed(Routes.LOGIN);
      },
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

  Future<void> verifyToken() async {
    final storage = GetStorage();
    final token = storage.read('token');
    isExistsToken.value = token != null;

    if (isExistsToken.value) await getUserInfo();
  }

  @override
  void onInit() {
    verifyToken();
    super.onInit();
  }
}
