import 'package:flutter/material.dart';

class CommonColors extends ThemeExtension<CommonColors> {
  final Color mainColor;
  final Color titleTextColor;
  final Color textColor;
  final Color whiteColor;

  const CommonColors({
    required this.mainColor,
    required this.titleTextColor,
    required this.textColor,
    required this.whiteColor,
  });

  @override
  ThemeExtension<CommonColors> copyWith({
    Color? mainColor,
    Color? color,
    Color? tileTextColor,
    Color? textColor,
    Color? whiteColor,
  }) {
    return CommonColors(
        mainColor: mainColor ?? this.mainColor,
        titleTextColor: tileTextColor ?? titleTextColor,
        textColor: textColor ?? this.textColor,
        whiteColor: whiteColor ?? this.whiteColor);
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
      whiteColor: Color.lerp(
        whiteColor,
        other.whiteColor,
        t,
      )!,
    );
  }
}
