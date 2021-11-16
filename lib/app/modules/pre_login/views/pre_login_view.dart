import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

import '../controllers/pre_login_controller.dart';

class PreLoginView extends GetView<PreLoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: Get.mediaQuery.size.height,
          width: double.infinity,
          child: Image.asset('assets/background.png', fit: BoxFit.fill),
        ),
        Container(
          padding: const EdgeInsets.only(top: 120),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 256,
                width: 256,
                alignment: Alignment.center,
                child: Image.asset('assets/logo.png'),
              ),
              const SizedBox(height: 64),
              CustomButton(title: 'ENTRAR'),
            ],
          ),
        ),
        Positioned(
          top: Get.mediaQuery.size.height - 48,
          child: InkWell(
            onTap: () => Get.toNamed(
              Routes.LOGIN,
            ),
            child: Container(
              height: 48,
              width: Get.mediaQuery.size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.keyboard_arrow_up,
                color: Theme.of(context).primaryColor,
                size: 48,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
