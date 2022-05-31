import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.currentTheme,
    ),
  );
}
