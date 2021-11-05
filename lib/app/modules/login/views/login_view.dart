import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/text.dart';
import 'package:tfg_cco/app/components/text_field.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 128),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                height: 256,
                width: 256,
                alignment: Alignment.center,
                color: Colors.grey,
              ),
              const SizedBox(height: 64),
              const CustomTextField(
                hintText: 'Email',
              ),
              const SizedBox(height: 32),
              const CustomTextField(
                hintText: 'Senha',
              ),
              const SizedBox(height: 16),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: InkWell(
                  onTap: () => print('Esqueceu a Senha'),
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
              const SizedBox(height: 64),
              CustomButton(title: 'ENTRAR'),
              const SizedBox(height: 32),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: GoogleButton()),
                    const SizedBox(width: 16),
                    Expanded(child: FacebookButton()),
                  ],
                ),
              ),
              const SizedBox(height: 48),
              InkWell(
                onTap: () => print('Register'),
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
    );
  }
}
