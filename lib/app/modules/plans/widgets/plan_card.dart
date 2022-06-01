import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FrontPlanCard extends StatelessWidget {
  final String title;
  final double value;
  final bool isSelected;

  const FrontPlanCard({
    required this.title,
    required this.value,
    required this.isSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: context.theme.colorScheme.primary,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: context.textTheme.headline4?.copyWith(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            value > 0 ? UtilBrasilFields.obterReal(value) : 'Grátis',
            style: context.textTheme.headline5?.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => isSelected ? null : print('trocar de plano'),
            child: Container(
              height: 36,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: context.theme.colorScheme.primary,
                  width: 3,
                ),
              ),
              child: Text(
                isSelected ? 'Plano selecionado' : 'Mudar de plano',
                style: context.textTheme.headline4?.copyWith(
                  color: context.theme.colorScheme.primary,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BackPlanCard extends StatelessWidget {
  final List<String> benefits;

  const BackPlanCard({
    required this.benefits,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: context.theme.colorScheme.primary,
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              benefits.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  '- ${benefits[index]}',
                  style: context.textTheme.headline2?.copyWith(
                    color: context.theme.colorScheme.primary,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
