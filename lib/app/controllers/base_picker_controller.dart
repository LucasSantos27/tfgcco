import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class BasePickerController extends GetxController {
  ImagePicker picker = ImagePicker();
  XFile? image;
  final imageUrl = ''.obs;
  final path = ''.obs;

  Future<void> pickImage() async {
    Get.defaultDialog(
      title: 'Selecione a imagem',
      middleText: '',
      cancel: IconButton(
        icon: Icon(
          Icons.image,
          color: Get.theme.colorScheme.primary,
        ),
        onPressed: () async {
          image = await picker.pickImage(source: ImageSource.gallery);
          path.value = image?.path ?? '';
          Get.back();
          await uploadImage();
        },
      ),
      confirm: IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Get.theme.colorScheme.primary,
        ),
        onPressed: () async {
          image = await picker.pickImage(source: ImageSource.camera);
          path.value = image?.path ?? '';
          await uploadImage();
          Get.back();
        },
      ),
    );
  }

  Future<void> uploadImage() async {
    final fileName = basename(path.value);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      await ref.putFile(File(path.value));
      imageUrl.value = await ref.getDownloadURL();
    } catch (e) {
      Get.snackbar('Erro:', 'Não foi possivel subir a imagem');
      path.value = '';
    }
  }
}
