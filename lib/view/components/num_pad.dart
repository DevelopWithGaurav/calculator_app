import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../data.dart';
import '../widgets/calc_button.dart';

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
