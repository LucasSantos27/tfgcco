import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/scaffold.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
          elevation: 0,
          actions: [
            Image.asset('assets/home_logo.png'),
          ],
          leading: Image.asset('assets/cdc_logo.png')),
      body: Obx(() {
        return Visibility(
          visible: controller.products.length > 0,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(controller.products.length, (index) {
              String image = controller.products[index].images[0];
              return Container(
                margin: EdgeInsets.all(4),
                padding: EdgeInsets.all(4),
                alignment: Alignment.center,
                color: Color(0xffF5F5F5),
                child: Column(
                  children: [
                    Container(
                      height: 128,
                      width: 128,
                      child: Image.asset("assets/marcas/${image}"),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${controller.products[index].nome}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '${controller.products[index].preco}',
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
        );
      }),
    );
  }
}
