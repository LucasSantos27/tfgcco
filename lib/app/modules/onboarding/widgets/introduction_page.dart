import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroductionPage extends StatelessWidget {
  final String title;
  final String body;
  final String image;

  const IntroductionPage({
    Key? key,
    required this.title,
    required this.body,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      children: [
        Flexible(
          flex: 12,
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Flexible(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Text(
                  title,
                  style: Get.textTheme.headline2,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Text(
                  body,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
