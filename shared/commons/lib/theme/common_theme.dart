import 'package:flutter/material.dart';

import '../main.dart';

class CommonTheme {
  static final theme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: const Color(0xFF4157FF),
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFFAFAFA),
    extensions: const [
      CommonColors(
        mainColor: Color(0xFF4157FF),
        titleTextColor: Color(0xFF090F47),
        textColor: Color(0x72090F47),
        whiteColor: Colors.white,
      )
    ],
  );
}
