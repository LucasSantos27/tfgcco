import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/modules/product/controllers/product_controller.dart';
import 'package:tfg_cco/app/network/end_points.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: context.theme.colorScheme.primary,
        elevation: 0,
        actions: [
          Image.asset('assets/home_logo.png'),
        ],
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 320,
            width: 320,
            child: Image.network(
              '${EndPoints.srcImage}${controller.product.image}',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            controller.product.name,
            style: context.textTheme.headline3,
          ),
          Text(
            controller.product.description ?? '',
            style: context.textTheme.bodyText2,
          ),
          const SizedBox(height: 32),
          Text(
            UtilBrasilFields.obterReal(controller.product.price.toDouble()),
            style: context.textTheme.headline5,
          ),
          const SizedBox(height: 32),
          Obx(
            () => Visibility(
              visible: controller.isExistsToken.value,
              child: Visibility(
                visible:
                    controller.cartController.findProduct(controller.product),
                child: CustomButton(
                  title: 'Remover do carrinho',
                  onTap: () {
                    controller.cartController.removeProduct(controller.product);
                  },
                  color: Colors.red,
                ),
                replacement: CustomButton(
                  title: controller.product.available
                      ? 'Adicionar no carrinho'
                      : 'Não disponivel',
                  onTap: () {
                    controller.cartController.addProduct(controller.product);
                  },
                  color: controller.product.available ? null : Colors.grey,
                ),
              ),
              replacement: CustomButton(
                title: 'ENTRAR',
                onTap: () => Get.offAllNamed(Routes.LOGIN),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
