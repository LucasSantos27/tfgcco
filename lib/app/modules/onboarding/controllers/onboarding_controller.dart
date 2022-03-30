import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/modules/onboarding/widgets/introduction_page.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  final currentPage = 0.obs;
  final pageController = PageController();
  final pages = [
    IntroductionPage(
      title: 'Seja bem vindo ao Clube da Cachaça',
      body: '[texto interessante aqui]',
      image: 'assets/logo.png',
    ),
    IntroductionPage(
      title: 'Faça parte do nosso Clube!',
      body: '[texto interessante aqui]',
      image: 'assets/logo.png',
    ),
  ];

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void skip() {
    pageController.animateToPage(
      pages.length - 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  void nextPage() {
    if (currentPage.value == pages.length - 1) {
      finishIntroduction();
    } else {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> finishIntroduction() async {
    Get.defaultDialog(
      title: 'Você deseja logar?',
      titleStyle: Get.textTheme.headline6!.copyWith(
        color: Get.theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      ),
      content: SizedBox(),
      buttonColor: Get.theme.colorScheme.primary,
      cancelTextColor: Get.theme.colorScheme.primary,
      confirmTextColor: Colors.white,
      textConfirm: 'SIM',
      textCancel: 'NÃO',
      onConfirm: () => Get.offAllNamed(Routes.LOGIN),
      onCancel: () => Get.offAllNamed(Routes.HOME),
    );
  }
}
