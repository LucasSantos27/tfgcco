import 'package:get/get.dart';
import 'package:tfg_cco/app/modules/edit/controllers/edit_controller.dart';
import 'package:tfg_cco/app/modules/profile/controllers/profile_controller.dart';

class EditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditController>(
      () => EditController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
  }
}
