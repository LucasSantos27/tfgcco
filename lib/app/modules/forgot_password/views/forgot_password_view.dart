import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/components/text_field.dart';
import 'package:validatorless/validatorless.dart';

import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('ESQUECEU SUA SENHA?', style: context.textTheme.headline6),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
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
            CustomTextField(
              hintText: 'EMAIL',
              validator: Validatorless.multiple([
                Validatorless.email('Esse campo deve ser um email'),
                Validatorless.required('Campo Obrigatório')
              ]),
            ),
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
            CustomButton(
              title: 'ENVIAR',
              onTap: () => controller.forgotPassword(),
            )
          ],
        ),
      ),
    );
  }
}
