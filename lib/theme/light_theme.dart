import 'package:flutter/material.dart';

import '../helper/custom_route.dart';

const primaryColor = Color(0xFFC82931);

ThemeData lightTheme = ThemeData(
  // fontFamily: 'Celias',
  // primaryColor: const Color(0xFFC82931),
  colorSchemeSeed: const Color(0xFFC82931),
  brightness: Brightness.light,
  useMaterial3: true,
  splashColor: const Color.fromARGB(255, 191, 75, 81).withOpacity(0.1),

  pageTransitionsTheme: PageTransitionsTheme(builders: {
    TargetPlatform.android: CustomPageTransitionBuilder(),
    TargetPlatform.iOS: CustomPageTransitionBuilder(),
  }),
);
