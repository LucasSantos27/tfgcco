import 'package:get/get.dart';
import 'package:tfg_cco/app/modules/plans/controllers/plans_controller.dart';

class PlansBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlansController>(
      () => PlansController(),
    );
  }
}
