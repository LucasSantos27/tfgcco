import 'package:get/get.dart';
import 'package:tfg_cco/app/controllers/base_picker_controller.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<BasePickerController>(
      () => BasePickerController(),
    );
  }
}
