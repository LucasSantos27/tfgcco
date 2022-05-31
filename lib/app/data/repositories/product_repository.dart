import 'package:get/get_connect/connect.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class ProductRepository extends GetConnect {
  Future<List<Product>> getAllProducts() async {
    try {
      var response = await get(EndPoints.products);

      if (response.hasError) {
        return [];
      }

      List<Product> products = (response.body['products'] as List)
          .map((item) => Product.fromJson(item))
          .toList();

      return products;
    } catch (e) {
      rethrow;
    }
  }
}
