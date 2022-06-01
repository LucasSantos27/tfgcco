import 'package:get/get.dart';
import 'package:tfg_cco/app/controllers/cart_controller.dart';
import 'package:tfg_cco/app/modules/product/controllers/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductController>(
      () => ProductController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}
