import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tfg_cco/app/components/button.dart';
import 'package:tfg_cco/app/components/scaffold.dart';
import 'package:tfg_cco/app/components/text.dart';
import 'package:tfg_cco/app/components/text_field.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('CADASTRO'),
        centerTitle: true,
      ),
      body: Column(
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
          CustomTextField(hintText: 'NOME'),
          const SizedBox(height: 24),
          CustomTextField(hintText: 'EMAIL'),
          const SizedBox(height: 24),
          CustomTextField(hintText: 'CPF'),
          const SizedBox(height: 24),
          CustomTextField(hintText: 'SENHA'),
          const SizedBox(height: 24),
          CustomTextField(hintText: 'CONFIRMAR SENHA'),
          const SizedBox(height: 16),
          Row(
            children: [
              Checkbox(value: false, onChanged: (t) {}),
              const SizedBox(width: 16),
              NormalBold(normal: 'Li e aceito os', bold: ' Termos de Uso'),
            ],
          ),
          const SizedBox(height: 16),
          CustomButton(title: 'REGISTRAR'),
        ],
      ),
    );
  }
}
