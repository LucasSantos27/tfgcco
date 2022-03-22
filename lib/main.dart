import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.currentTheme,
    ),
  );
}
