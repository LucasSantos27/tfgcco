import 'package:flutter/material.dart';

class NormalBold extends StatelessWidget {
  final String normal;
  final String bold;
  const NormalBold({required this.normal, required this.bold});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: normal,
            style: TextStyle(
              color: Color.fromRGBO(144, 144, 144, 1),
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: bold,
            style: TextStyle(
              color: Color.fromRGBO(0, 39, 118, 1),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
