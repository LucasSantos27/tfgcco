import 'package:get/get.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/data/repositories/product_repository.dart';

class HomeController extends GetxController {
  final products = <Product>[].obs;
  final productRepository = ProductRepository();

  Future<void> getAllProducts() async {
    try {
      products.value = await productRepository.getAllProducts();
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  @override
  void onInit() {
    getAllProducts();
    super.onInit();
  }
}
