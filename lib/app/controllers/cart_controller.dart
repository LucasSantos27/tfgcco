import 'package:get/get.dart';
import 'package:tfg_cco/app/data/models/models.dart';

class CartController extends GetxController {
  final products = <Product>[].obs;

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct(Product product) {
    products.remove(product);
  }

  bool findProduct(Product product) {
    final foundedProduct =
        products.where((foundProduct) => product == foundProduct);

    return foundedProduct.isNotEmpty;
  }
}
