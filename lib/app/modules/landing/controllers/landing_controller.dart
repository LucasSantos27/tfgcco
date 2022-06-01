import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/controllers/cart_controller.dart';
import 'package:tfg_cco/app/modules/home/views/home_view.dart';
import 'package:tfg_cco/app/modules/profile/views/profile_view.dart';

class LandingController extends GetxController {
  final selectedIndex = 0.obs;
  final pageController = PageController();
  final isExistsToken = false.obs;
  final CartController cartController = Get.find();

  Future<void> verifyToken() async {
    final storage = GetStorage();
    final token = storage.read('token');
    isExistsToken.value = token != null;
  }

  final views = <GetView>[
    HomeView(),
    ProfileView(),
  ];

  final viewsLabel = <String>[
    'Início',
    'Perfil',
  ];

  final viewsIcon = <IconData>[
    Icons.home,
    Icons.person,
  ];

  void onItemTapped(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  void onInit() {
    verifyToken();
    super.onInit();
  }
}
