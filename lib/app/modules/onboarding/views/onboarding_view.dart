import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/modules/onboarding/controllers/onboarding_controller.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(64, 0, 64, 128),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  title: 'Entrar',
                  onTap: () {
                    Get.defaultDialog(
                      title: 'Você confirma ter +18 anos?',
                      titleStyle: Get.textTheme.headline6!.copyWith(
                        color: Get.theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                      content: Icon(
                        Icons.no_drinks,
                        size: 64,
                        color: Get.theme.colorScheme.primary,
                      ),
                      buttonColor: Get.theme.colorScheme.primary,
                      cancelTextColor: Get.theme.colorScheme.primary,
                      confirmTextColor: Colors.white,
                      textConfirm: 'SIM',
                      textCancel: 'NÃO',
                      onConfirm: () => Get.offAllNamed(Routes.INTRODUCTION),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
