import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/profile_avatar.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProfileAvatar(),
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
                keyboardType: TextInputType.emailAddress,
                validator: Validatorless.multiple([
                  Validatorless.email('Esse campo deve ser um email'),
                  Validatorless.required('Campo Obrigatório')
                ]),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: 'CELULAR',
                controller: controller.phoneController,
                keyboardType: TextInputType.phone,
                validator: Validatorless.multiple([
                  Validatorless.required('Campo Obrigatório'),
                ]),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  TelefoneInputFormatter(),
                ],
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: 'CPF',
                controller: controller.cpfController,
                keyboardType: TextInputType.number,
                validator: Validatorless.multiple([
                  Validatorless.cpf('Esse campo deve ser um cpf'),
                  Validatorless.required('Campo Obrigatório')
                ]),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
              ),
              const SizedBox(height: 24),
              CustomTextField(
                hintText: 'NASCIMENTO',
                controller: controller.dateController,
                validator: Validatorless.required('Campo Obrigatório'),
                keyboardType: TextInputType.datetime,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  DataInputFormatter(),
                ],
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
      ),
    );
  }
}
