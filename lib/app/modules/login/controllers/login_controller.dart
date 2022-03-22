import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/repositories/user_repository.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final userRepository = UserRepository();

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      final credentials = Credentials(
          email: emailController.text, password: passwordController.text);
      try {
        String token = await userRepository.login(credentials);

        final storage = GetStorage();
        storage.write('token', token);
        debugPrint('${storage.read('token')}');

        isLoading.value = false;

        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        isLoading.value = false;
        Get.snackbar('Error', e.toString());
      }
    }
  }
}
