import 'providers/calculator_provider.dart';
import 'providers/dark_mode_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/screens/calculator_screen.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => DarkModeProvider()),
        ChangeNotifierProvider(create: (ctx) => CalculatorProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cal-C',
        theme: lightTheme,
        home: const CalculatorScreen(),
      ),
    );
  }
}
