import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class BasePickerController extends GetxController {
  ImagePicker picker = ImagePicker();
  XFile? image;
  final path = ''.obs;

  Future<void> pickImage() async {
    Get.defaultDialog(
      title: 'select_image'.tr,
      middleText: '',
      cancel: IconButton(
        icon: Icon(
          Icons.image,
          color: Get.theme.colorScheme.primary,
        ),
        onPressed: () async {
          image = await picker.pickImage(source: ImageSource.gallery);
          // TODO: set image
          path.value = image?.path ?? '';
          Get.back();
        },
      ),
      confirm: IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Get.theme.colorScheme.primary,
        ),
        onPressed: () async {
          image = await picker.pickImage(source: ImageSource.camera);
          // TODO: set image
          path.value = image?.path ?? '';
          Get.back();
        },
      ),
    );
  }
}
