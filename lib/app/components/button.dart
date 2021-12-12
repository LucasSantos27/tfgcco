import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 156, 59, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              title,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('GOOGLE'),
      child: Container(
        height: 48,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color.fromRGBO(192, 192, 192, 1)),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Image.asset('assets/google.png', height: 24, width: 24),
        ),
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print('FACEBOOK'),
      child: Container(
        height: 48,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(74, 110, 169, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Image.asset('assets/facebook.png', height: 48, width: 48),
        ),
      ),
    );
  }
}
