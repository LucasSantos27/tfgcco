import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/modules/plans/controllers/plans_controller.dart';
import 'package:tfg_cco/app/modules/plans/widgets/plan_card.dart';

class PlansView extends GetView<PlansController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: context.theme.colorScheme.primary,
        elevation: 0,
        title: Text('Planos'),
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              GestureDetector(
                onTap: () => controller.isFirstPlanFront.value =
                    !controller.isFirstPlanFront.value,
                child: Visibility(
                  visible: controller.isFirstPlanFront.value,
                  child: FrontPlanCard(
                      title: 'Básico', value: 0, isSelected: true),
                  replacement: BackPlanCard(
                    benefits: [
                      'Compre as melhores cachaças do Brasil',
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.isSecondPlanFront.value =
                    !controller.isSecondPlanFront.value,
                child: Visibility(
                  visible: controller.isSecondPlanFront.value,
                  child: FrontPlanCard(
                      title: 'Velho Barreiro', value: 60, isSelected: false),
                  replacement: BackPlanCard(
                    benefits: [
                      'Compre as melhores cachaças do Brasil',
                      'Receba 5% de descontos em todas as compras',
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => controller.isThirdPlanFront.value =
                    !controller.isThirdPlanFront.value,
                child: Visibility(
                  visible: controller.isThirdPlanFront.value,
                  child:
                      FrontPlanCard(title: '51', value: 120, isSelected: false),
                  replacement: BackPlanCard(
                    benefits: [
                      'Compre as melhores cachaças do Brasil',
                      'Receba 10% de descontos em todas as compras',
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
