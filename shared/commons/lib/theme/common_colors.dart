import 'package:flutter/material.dart';

class CommonColors extends ThemeExtension<CommonColors> {
  final Color mainColor;
  final Color titleTextColor;
  final Color textColor;

  const CommonColors({
    required this.mainColor,
    required this.titleTextColor,
    required this.textColor,
  });

  @override
  ThemeExtension<CommonColors> copyWith({
    Color? mainColor,
    Color? color,
    Color? tileTextColor,
    Color? textColor,
  }) {
    return CommonColors(
      mainColor: mainColor ?? this.mainColor,
      titleTextColor: tileTextColor ?? titleTextColor,
      textColor: textColor ?? this.textColor,
    );
  }

  @override
  CommonColors lerp(
    covariant CommonColors other,
    double t,
  ) {
    return CommonColors(
      mainColor: Color.lerp(mainColor, other.mainColor, t)!,
      titleTextColor: Color.lerp(
        titleTextColor,
        other.titleTextColor,
        t,
      )!,
      textColor: Color.lerp(
        textColor,
        other.textColor,
        t,
      )!,
    );
  }
}
