import 'package:get/get.dart';
import 'package:tfg_cco/app/data/models/models.dart';

class CartController extends GetxController {
  final products = <Product>[].obs;
  final totalValue = 0.0.obs;

  void addProduct(Product product) {
    totalValue.value += product.price.toDouble();
    products.add(product);
  }

  void removeProduct(Product product) {
    totalValue.value -= product.price.toDouble();
    products.remove(product);
  }

  bool findProduct(Product product) {
    final foundedProduct =
        products.where((foundProduct) => product == foundProduct);

    return foundedProduct.isNotEmpty;
  }
}
