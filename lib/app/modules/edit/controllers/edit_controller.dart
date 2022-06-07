import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/repositories/user_repository.dart';
import 'package:tfg_cco/app/modules/profile/controllers/profile_controller.dart';

class EditController extends GetxController {
  final userRepository = UserRepository();
  final formKey = GlobalKey<FormState>();
  final isLoading = false.obs;
  final nameController = TextEditingController();
  final cpfController = TextEditingController();
  final dateController = TextEditingController();
  final emailController = TextEditingController();
  final ProfileController profileController = Get.find();

  String convertBrazilDateToDate(String bdDate) {
    var splitedDate = bdDate.split(' ');

    var brDate = splitedDate[0].split('-');
    return '${brDate[2]}/${brDate[1]}/${brDate[0]}';
  }

  DateTime convertStringToBrazilDate(String brDate) {
    var splitedDate = brDate.split('/');

    print(splitedDate);
    return DateTime.parse(
        '${splitedDate[2]}-${splitedDate[1]}-${splitedDate[0]}');
  }

  Future<void> edit() async {
    if (formKey.currentState!.validate()) {
      isLoading.value = true;
      final user = User(
        name: nameController.text,
        cpf: cpfController.text,
        birthday: convertStringToBrazilDate(dateController.text),
        email: emailController.text,
      );
      try {
        final storage = GetStorage();
        final id = storage.read('id');
        final response = await userRepository.edit(user, id);
        await profileController.getUserInfo();
        isLoading.value = false;
        Get.back();
        Get.snackbar('Concluido', response);
      } catch (e) {
        isLoading.value = false;
        Get.snackbar('Erro:', e.toString());
      }
    }
  }

  Future<void> getUserInfo() async {
    isLoading.value = true;
    try {
      final user = await userRepository.getInfo();
      nameController.text = user.name;
      cpfController.text = user.cpf;
      dateController.text = convertBrazilDateToDate(user.birthday.toString());
      emailController.text = user.email;
      isLoading.value = false;
    } catch (e) {
      Get.snackbar('Error', e.toString());
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    getUserInfo();

    super.onInit();
  }
}
