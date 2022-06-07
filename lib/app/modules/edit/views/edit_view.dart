import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/components/text_field.dart';
import 'package:tfg_cco/app/modules/edit/controllers/edit_controller.dart';
import 'package:validatorless/validatorless.dart';

class EditView extends GetView<EditController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('EDITAR PERFIL', style: context.textTheme.headline6),
        centerTitle: true,
        backgroundColor: context.theme.colorScheme.primary,
        foregroundColor: context.theme.colorScheme.background,
      ),
      body: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
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
                        Validatorless.email(
                            'Esse campo deve ser um email valido'),
                        Validatorless.required('Campo Obrigatório')
                      ]),
                    ),
                    const SizedBox(height: 24),
                    CustomTextField(
                      hintText: 'CPF',
                      controller: controller.cpfController,
                      keyboardType: TextInputType.number,
                      validator: Validatorless.multiple([
                        Validatorless.cpf('Esse campo deve ser um cpf valido'),
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
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              Obx(
                () => CustomButton(
                  title: 'EDITAR PERFIL',
                  onTap: controller.edit,
                  isLoading: controller.isLoading.value,
                ),
              ),
            ],
          )),
    );
  }
}
