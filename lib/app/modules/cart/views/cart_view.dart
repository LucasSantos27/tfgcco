import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/controllers/cart_controller.dart';
import 'package:tfg_cco/app/network/end_points.dart';

class CartView extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: context.theme.colorScheme.primary,
        title: Text(
          'Carrinho',
          style: TextStyle(color: context.theme.colorScheme.primary),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => Visibility(
          visible: controller.products.isNotEmpty,
          child: SingleChildScrollView(
            child: Column(
              children: List.generate(
                controller.products.length,
                (index) => Stack(
                  children: [
                    Card(
                      elevation: 3,
                      child: ListTile(
                        leading: Container(
                          height: 64,
                          width: 64,
                          child: Image.network(
                            '${EndPoints.srcImage}${controller.products[index].image}',
                            fit: BoxFit.fill,
                          ),
                        ),
                        title: Text(
                          controller.products[index].name,
                          style: context.textTheme.headline2,
                        ),
                        subtitle: Text(
                          UtilBrasilFields.obterReal(
                            controller.products[index].price.toDouble(),
                          ),
                          style: context.textTheme.bodyText2,
                        ),
                        trailing: CustomNumberPicker(
                          initialValue: 1,
                          maxValue: 1000,
                          minValue: 0,
                          step: 1,
                          onValue: (value) {
                            print(value.toString());
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: -10,
                      child: IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 20,
                          ),
                          onPressed: () {
                            controller
                                .removeProduct(controller.products[index]);
                            controller.products.refresh();
                          }),
                    )
                  ],
                ),
              ),
            ),
          ),
          replacement: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 256),
            child: Text(
              'Não há produtos no carrinho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Visibility(
          visible: controller.products.isNotEmpty,
          child: Material(
            elevation: 20,
            child: Container(
              height: 60,
              color: context.theme.colorScheme.primary,
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => print('continuar'),
                      child: Text(
                        'PROSSEGUIR',
                        style: context.textTheme.headline1
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Text(
                    UtilBrasilFields.obterReal(controller.totalValue.value),
                    style: context.textTheme.headline1
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
