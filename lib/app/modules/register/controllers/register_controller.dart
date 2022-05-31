import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/controllers/base_picker_controller.dart';
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
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final BasePickerController imageController = Get.find();

  final userRepository = UserRepository();

  DateTime convertStringToBrazilDate(String brDate) {
    var splitedDate = brDate.split('/');

    print(splitedDate);
    return DateTime.parse(
        '${splitedDate[2]}-${splitedDate[1]}-${splitedDate[0]}');
  }

  Future<void> register() async {
    if (confirmPasswordController.text == passwordController.text) {
      if (formKey.currentState!.validate()) {
        isLoading.value = true;
        final user = User(
          name: nameController.text,
          cpf: cpfController.text,
          birthday: convertStringToBrazilDate(dateController.text),
          email: emailController.text,
          password: passwordController.text,
          image: imageController.imageUrl.value,
          phone: UtilBrasilFields.obterTelefone(
            phoneController.text,
            mascara: false,
          ),
        );
        try {
          String token = await userRepository.register(user);

          final storage = GetStorage();
          storage.write('token', token);
          isLoading.value = false;
          Get.offAllNamed(Routes.HOME);
        } catch (e) {
          isLoading.value = false;
          Get.snackbar('Erro:', e.toString());
        }
      }
    } else {
      Get.snackbar('Erro:', 'Senhas não condizem');
    }
  }
}
