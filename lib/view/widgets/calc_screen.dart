import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants.dart';
import '../../providers/calculator_provider.dart';

class CalCScreen extends StatelessWidget {
  const CalCScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      shadowColor: Colors.black,
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xAA3b3b3b),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Consumer<CalculatorProvider>(
              builder: (_, calculatorProvider, __) {
            return FittedBox(
              child: Text(
                calculatorProvider.inputExpression,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: const Color(0xAAbff3dc), letterSpacing: 3),
              ),
            );
          }),
        ),
      ),
    );
  }
}
