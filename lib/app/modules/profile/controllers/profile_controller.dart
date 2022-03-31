import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/data/models/profile_tile.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class ProfileController extends GetxController {
  final profileTiles = [
    ProfileTile(
      leading: Icons.account_box,
      title: 'Editar Perfil',
      onTap: () {},
    ),
    ProfileTile(
      leading: Icons.lock,
      title: 'Alterar Senha',
      onTap: () {},
    ),
    ProfileTile(
      leading: Icons.settings,
      title: 'Configurações',
      onTap: () {},
    ),
    ProfileTile(
      leading: Icons.logout,
      title: 'Sair',
      onTap: () => Get.offAllNamed(Routes.LOGIN),
    ),
  ];
}
