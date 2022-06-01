import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/controllers/cart_controller.dart';
import 'package:tfg_cco/app/data/models/models.dart';

class ProductController extends GetxController {
  final Product product = Get.arguments;
  final isExistsToken = false.obs;
  final CartController cartController = Get.find();

  Future<void> verifyToken() async {
    final storage = GetStorage();
    final token = storage.read('token');
    isExistsToken.value = token != null;
  }

  @override
  void onInit() {
    verifyToken();
    super.onInit();
  }
}
