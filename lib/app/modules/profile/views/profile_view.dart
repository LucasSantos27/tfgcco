import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/profile_header.dart';

import 'package:tfg_cco/app/modules/profile/controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Obx(
            () => Visibility(
              visible: controller.isLoading.value == false,
              child: ProfileHeader(
                user: controller.user.value,
              ),
              replacement: CircularProgressIndicator(
                color: context.theme.colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(height: 8),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.profileTiles.length,
            itemBuilder: (context, index) {
              final tile = controller.profileTiles[index];
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                leading: Icon(tile.leading),
                title: Text(tile.title),
                onTap: tile.onTap,
              );
            },
          ),
        ],
      ),
    );
  }
}
