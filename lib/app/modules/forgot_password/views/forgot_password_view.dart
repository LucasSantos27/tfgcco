import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/components/text_field.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ESQUECEU SUA SENHA?'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            'Digite seu endereço de email caso não lembre da sua senha',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(144, 144, 144, 1),
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 36),
          CustomTextField(hintText: 'EMAIL'),
          const SizedBox(height: 24),
          Text(
            'Será enviado uma nova senha para a sua caixa de entrada, caso não encontre, verifique a caixa de SPAM.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(192, 192, 192, 1),
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 64),
          CustomButton(title: 'ENVIAR')
        ],
      ),
    );
  }
}
