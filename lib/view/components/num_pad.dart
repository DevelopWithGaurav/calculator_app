import 'package:calculator_app/constants.dart';
import 'package:calculator_app/data.dart';
import 'package:calculator_app/models/button_model.dart';
import 'package:calculator_app/view/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class NumPad extends StatelessWidget {
  const NumPad({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(kDefaultPadding),
      shrinkWrap: true,
      itemCount: buttons.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemBuilder: (_, index) {
        final requiredButton = buttons[index];
        return CalCButton(
          requiredButton: requiredButton,
        );
      },
    );
  }
}
