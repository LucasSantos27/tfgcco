import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            height: 128,
            width: 128,
            margin: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.theme.colorScheme.primary,
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: ClipOval(
              child: Image.network(
                'https://picsum.photos/128',
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: 16,
            right: 4,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: context.theme.colorScheme.surface,
                  border: Border.all(
                    color: context.theme.colorScheme.primary,
                    width: 2,
                  ),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: context.theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
