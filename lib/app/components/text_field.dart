import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool? obscureText;
  final String? Function(String? tag)? validator;
  CustomTextField({
    required this.hintText,
    this.controller,
    this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        validator: validator,
        controller: controller ?? TextEditingController(),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromRGBO(192, 192, 192, 1),
              width: 1.3,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
          filled: true,
          hintStyle: TextStyle(
            color: Color.fromRGBO(192, 192, 192, 1),
          ),
          hintText: hintText,
          fillColor: Colors.white70,
          contentPadding: const EdgeInsets.all(16),
        ),
        obscureText: obscureText ?? false,
      ),
    );
  }
}
