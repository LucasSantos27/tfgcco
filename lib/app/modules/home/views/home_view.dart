import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/network/end_points.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Visibility(
        visible: controller.products.isNotEmpty,
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          children: List.generate(controller.products.length, (index) {
            return Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.all(4),
              alignment: Alignment.center,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 128,
                    width: 128,
                    child: Image.network(
                      '${EndPoints.srcImage}${controller.products[index].image}',
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        controller.products[index].name,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'R\$ ${controller.products[index].price}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Get.theme.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
        ),
        replacement: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 256),
          child: Text(
            'Não há produtos no momento',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
