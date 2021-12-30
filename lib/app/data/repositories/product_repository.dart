import 'package:get/get_connect/connect.dart';
import 'package:tfg_cco/app/data/models/models.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class ProductRepository extends GetConnect {
  Future<List<Product>> getAllProducts() async {
    try {
      List<Product> response = [];

      await get(EndPoints.products, decoder: (data) {
        response = (data["marcas"] as List)
            .map((item) => Product.fromJson(item))
            .toList();
      });

      return response;
    } catch (e) {
      throw e;
    }
  }
}
