import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  final formKey = GlobalKey<FormState>();

  void forgotPassword() {
    if (formKey.currentState!.validate()) {}
  }
}
