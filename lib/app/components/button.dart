import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  const CustomButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: InkWell(
        onTap: () => print('ENTRAR'),
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
          child: Row(
            children: [
              Image.asset('assets/google.png', height: 12, width: 12),
              const SizedBox(width: 12),
              Text(
                'ENTRAR COM GOOGLE',
                style: TextStyle(
                  color: Color.fromRGBO(192, 192, 192, 1),
                  fontSize: 12,
                ),
              ),
            ],
          ),
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
          child: Row(
            children: [
              Image.asset('assets/facebook.png'),
              Text(
                'ENTRAR COM FACEBOOK',
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}