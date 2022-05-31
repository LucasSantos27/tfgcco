import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/profile_avatar.dart';
import 'package:tfg_cco/app/data/models/models.dart';

class ProfileHeader extends StatelessWidget {
  final User? user;
  const ProfileHeader({this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        children: [
          ProfileAvatar(
            hasImage: true,
            imageUrl: user?.image,
          ),
          Text(
            user?.name ?? '',
            style: context.textTheme.headline5,
          ),
          Text(
            user?.email ?? '',
            style: context.textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
