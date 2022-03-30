import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/modules/home/views/home_view.dart';
import 'package:tfg_cco/app/modules/profile/views/profile_view.dart';

class LandingController extends GetxController {
  final selectedIndex = 0.obs;
  final pageController = PageController();

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
}
