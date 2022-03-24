import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/components/text.dart';
import 'package:tfg_cco/app/components/text_field.dart';
import 'package:validatorless/validatorless.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('CADASTRO', style: context.textTheme.headline6),
        centerTitle: true,
        backgroundColor: context.theme.colorScheme.primary,
        foregroundColor: context.theme.colorScheme.background,
      ),
      body: Form(
        key: controller.formKey,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromRGBO(192, 192, 192, 1),
                  width: 3,
                ),
              ),
              child: Icon(
                Icons.camera_alt_outlined,
                color: Color.fromRGBO(192, 192, 192, 1),
                size: 64,
              ),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'NOME',
              controller: controller.nameController,
              validator: Validatorless.required('Campo Obrigatório'),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'EMAIL',
              controller: controller.emailController,
              validator: Validatorless.multiple([
                Validatorless.email('Esse campo deve ser um email'),
                Validatorless.required('Campo Obrigatório')
              ]),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'CPF',
              controller: controller.cpfController,
              validator: Validatorless.multiple([
                Validatorless.cpf('Esse campo deve ser um cpf'),
                Validatorless.required('Campo Obrigatório')
              ]),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'NASCIMENTO',
              controller: controller.dateController,
              validator: Validatorless.required('Campo Obrigatório'),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'SENHA',
              controller: controller.passwordController,
              obscureText: true,
              validator: Validatorless.required('Campo Obrigatório'),
            ),
            const SizedBox(height: 24),
            CustomTextField(
              hintText: 'CONFIRMAR SENHA',
              controller: controller.confirmPasswordController,
              obscureText: true,
              validator: Validatorless.required('Campo Obrigatório'),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Obx(() => Transform.scale(
                      scale: 1.2,
                      child: Checkbox(
                        activeColor: context.theme.colorScheme.primary,
                        shape: CircleBorder(),
                        value: controller.isAcceptedTerm.value,
                        onChanged: (t) {
                          controller.isAcceptedTerm.value = t!;
                        },
                      ),
                    )),
                NormalBold(normal: 'Li e aceito os', bold: ' Termos de Uso'),
              ],
            ),
            const SizedBox(height: 16),
            CustomButton(
              title: 'REGISTRAR',
              onTap: controller.register,
            ),
          ],
        ),
      ),
    );
  }
}
