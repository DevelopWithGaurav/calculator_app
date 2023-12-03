import 'package:flutter/material.dart';

import '../../constants.dart';
import '../components/num_pad.dart';
import '../widgets/calc_screen.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAA2b2b2b),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Cal-C',
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: const Color(0xAAbff3dc)),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 2, horizontal: kDefaultPadding),
              child: CalCScreen(),
            ),
          ),
          SafeArea(child: NumPad()),
        ],
      ),
    );
  }
}
