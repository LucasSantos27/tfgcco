import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tfg_cco/app/modules/onboarding/controllers/onboarding_controller.dart';

class IntroductionView extends GetView<OnboardingController> {
  const IntroductionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView(
              physics: const BouncingScrollPhysics(),
              controller: controller.pageController,
              onPageChanged: controller.onPageChanged,
              children: controller.pages,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: controller.pageController,
                    count: controller.pages.length,
                    effect: ScaleEffect(
                      dotColor:
                          context.theme.colorScheme.primary.withOpacity(0.2),
                      activeDotColor: context.theme.colorScheme.primary,
                      dotHeight: 6,
                      dotWidth: 6,
                      scale: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: controller.skip,
                        child: Text(
                          'Pular',
                          style: Get.textTheme.button!.copyWith(
                            color: context.theme.colorScheme.primary,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: controller.nextPage,
                        style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60),
                          shape: const CircleBorder(),
                          primary: context.theme.colorScheme.primary,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
