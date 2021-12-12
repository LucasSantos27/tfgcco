import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget appBar;
  const CustomScaffold({required this.body, required this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Container(
          height: Get.mediaQuery.size.height - 60,
          color: Theme.of(context).primaryColor,
          child: Container(
            padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
              color: Colors.white,
            ),
            child: body,
          ),
        ),
      ),
    );
  }
}
