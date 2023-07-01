import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class CommonText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? align;

  const CommonText(
    this.text, {
    super.key,
    this.style,
    this.align,
  });

  factory CommonText.title(
    String text, {
    TextAlign? align,
  }) {
    return CommonText(
      text,
      align: align,
      style: TextStyle(
        color: const Color(0xFF090F47),
        fontSize: 24.p,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  factory CommonText.paragraph(
    String text, {
    TextAlign? align,
  }) {
    return CommonText(
      text,
      align: align,
      style: TextStyle(
        color: const Color(0x72090F47),
        fontSize: 16.p,
        fontWeight: FontWeight.w300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentStyle = GoogleFonts.inter(
      color: context.commonColors.textColor,
    ).merge(style);
    return TweenAnimationBuilder<double>(
      duration: const Duration(
        milliseconds: 600,
      ),
      curve: Curves.fastEaseInToSlowEaseOut,
      tween: Tween(begin: 0, end: 1.0),
      child: Text(
        text,
        textAlign: align,
        style: currentStyle,
      ),
      builder: (context, value, child) {
        return Transform.scale(
          scaleX: value,
          alignment: Alignment.centerLeft,
          child: child,
        );
      },
    );
  }
}
