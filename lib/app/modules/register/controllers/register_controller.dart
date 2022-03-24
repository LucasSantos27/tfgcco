import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/repositories/user_repository.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class RegisterController extends GetxController {
  final isAcceptedTerm = false.obs;
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final nameController = TextEditingController();
  final cpfController = TextEditingController();
  final dateController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final image = 'imgurl';

  final userRepository = UserRepository();

  Future<void> register() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      final user = User(
        name: nameController.text,
        cpf: cpfController.text,
        date: dateController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmpassword: confirmPasswordController.text,
        image: image,
      );
      try {
        String token = await userRepository.register(user);

        final storage = GetStorage();
        storage.write('token', token);
        isLoading.value = false;
        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        isLoading.value = false;
        Get.snackbar('Error', e.toString());
      }
    }
  }
}
