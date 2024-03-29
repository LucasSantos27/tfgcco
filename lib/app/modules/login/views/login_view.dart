import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/text.dart';
import 'package:tfg_cco/app/components/text_field.dart';
import 'package:tfg_cco/app/routes/app_pages.dart';
import 'package:validatorless/validatorless.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Container(
            padding: const EdgeInsets.only(top: 48),
            alignment: Alignment.center,
            child: Column(
              children: [
                Container(
                  height: 256,
                  width: 256,
                  alignment: Alignment.center,
                  child: Image.asset('assets/logo.png'),
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  hintText: 'EMAIL',
                  controller: controller.emailController,
                  validator: Validatorless.multiple([
                    Validatorless.email('Esse campo deve ser um email'),
                    Validatorless.required('Campo Obrigatório')
                  ]),
                ),
                const SizedBox(height: 32),
                CustomTextField(
                  hintText: 'SENHA',
                  controller: controller.passwordController,
                  obscureText: true,
                  validator: Validatorless.required('Campo Obrigatório'),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ESQUECEU A SENHA?',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 39, 118, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 176,
                          height: 2,
                          color: Color.fromRGBO(0, 39, 118, 1),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 48),
                Obx(
                  () => CustomButton(
                    title: 'ENTRAR',
                    onTap: controller.login,
                    isLoading: controller.isLoading.value,
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: () => Get.toNamed(Routes.HOME),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Color.fromRGBO(0, 39, 118, 1),
                            ),
                            const SizedBox(width: 16),
                            Text(
                              'LOGIN ANÔNIMO',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 39, 118, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: 176,
                          height: 2,
                          color: Color.fromRGBO(0, 39, 118, 1),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: GoogleButton()),
                      const SizedBox(width: 16),
                      Expanded(
                        child: FacebookButton(
                          onTap: controller.facebookLogin,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                InkWell(
                  onTap: () => Get.toNamed(Routes.REGISTER),
                  child: NormalBold(
                    normal: 'Ainda não tem conta?',
                    bold: ' Faça seu cadastro.',
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
