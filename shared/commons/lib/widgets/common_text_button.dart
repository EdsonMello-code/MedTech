import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  final TextStyle? textStyle;

  const CommonTextButton(
    this.title, {
    super.key,
    this.onPressed,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: CommonText(
        title,
        style: TextStyle(
          color: onPressed == null
              ? context.commonColors.textColor
              : context.commonColors.mainColor,
          fontSize: 14.p,
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        ).merge(
          textStyle,
        ),
      ),
    );
  }
}
