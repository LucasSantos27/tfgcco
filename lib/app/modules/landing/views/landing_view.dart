import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/modules/landing/controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: context.theme.colorScheme.primary,
        elevation: 0,
        actions: [
          Image.asset('assets/home_logo.png'),
        ],
        leading: Image.asset('assets/cdc_logo.png'),
      ),
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.selectedIndex.value = index;
        },
        children: controller.views,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.selectedIndex.value,
          onTap: controller.onItemTapped,
          elevation: 16,
          items: List.generate(
            controller.views.length,
            (index) => BottomNavigationBarItem(
              label: controller.viewsLabel[index],
              icon: Icon(controller.viewsIcon[index]),
            ),
          ),
        ),
      ),
    );
  }
}
