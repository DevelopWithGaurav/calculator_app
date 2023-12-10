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
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: 12),
        decoration: BoxDecoration(
          color: const Color(0xAA3b3b3b),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Consumer<CalculatorProvider>(
            builder: (_, calculatorProvider, __) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: SizedBox(
                  width: double.maxFinite,
                  child: FittedBox(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      calculatorProvider.inputExpression,
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: const Color(0xAAbff3dc), letterSpacing: 3),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: double.maxFinite,
                  child: FittedBox(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      calculatorProvider.result,
                      textAlign: TextAlign.end,
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge!
                          .copyWith(color: const Color(0xAAbff3dc), letterSpacing: 3),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
