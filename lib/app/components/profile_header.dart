import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/profile_avatar.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          const ProfileAvatar(),
          Text(
            'Profile Name',
            style: context.textTheme.headline5,
          ),
          Text(
            'email@email.com',
            style: context.textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
