import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileAvatar extends StatelessWidget {
  final bool hasImage;
  const ProfileAvatar({
    this.hasImage = false,
    Key? key,
  }) : super(key: key);

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
                color: Color.fromRGBO(192, 192, 192, 1),
                width: 2,
              ),
              shape: BoxShape.circle,
            ),
            child: Visibility(
              visible: hasImage,
              child: ClipOval(
                child: Image.network(
                  'https://picsum.photos/128',
                  fit: BoxFit.contain,
                ),
              ),
              replacement: Container(
                alignment: Alignment.center,
                child: Text(
                  'Escolha uma imagem',
                  textAlign: TextAlign.center,
                  style: context.textTheme.subtitle2!.copyWith(
                    color: context.theme.colorScheme.primary,
                  ),
                ),
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
                    color: Color.fromRGBO(192, 192, 192, 1),
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