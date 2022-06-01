import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tfg_cco/app/theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  final storage = GetStorage();
  final token = storage.read('token');
  runApp(
    GetMaterialApp(
      initialRoute: token != null ? AppPages.ONLOGGED : AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.currentTheme,
    ),
  );
}
