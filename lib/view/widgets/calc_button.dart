import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../models/button_model.dart';
import '../../providers/calculator_provider.dart';

class CalCButton extends StatelessWidget {
  const CalCButton({super.key, required this.requiredButton});

  final ButtonModel requiredButton;

  @override
  Widget build(BuildContext context) {
    final calculatorProvider =
        Provider.of<CalculatorProvider>(context, listen: false);
    return InkWell(
      onTap: () {
        HapticFeedback.mediumImpact();

        if (requiredButton.actionType == ActionType.operand ||
            requiredButton.actionType == ActionType.operator) {
          calculatorProvider.inputExpression += requiredButton.label;
          calculatorProvider.calculate();
        } else if (requiredButton.actionType == ActionType.clearAll) {
          calculatorProvider.inputExpression = '';
          calculatorProvider.result = '';
        } else if (requiredButton.actionType == ActionType.clearLast) {
          calculatorProvider.clearLast();

        } else if (requiredButton.actionType == ActionType.equals) {
          calculatorProvider.calculate();
        }
      },
      borderRadius: BorderRadius.circular(100),
      splashColor: Colors.grey.shade300.withOpacity(.4),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(100),
        elevation: 5,
        shadowColor: Colors.black,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: requiredButton.actionType == ActionType.clearAll ||
                    requiredButton.actionType == ActionType.clearLast
                ? Colors.blueGrey.shade600
                : requiredButton.actionType == ActionType.equals
                    ? Colors.blueGrey.shade600
                    : requiredButton.actionType == ActionType.operator
                        ? Colors.grey.shade600
                        : const Color(0xAA666666),
          ),
          child: Align(
            alignment: Alignment.center,
            child: requiredButton.useSVG ?
                SvgPicture.asset(
                  requiredButton.svgIcon ?? '',
                  width: 32,
                )
                : Text(
              requiredButton.label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
