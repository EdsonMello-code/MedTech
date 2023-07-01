import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class CommonDot extends StatelessWidget {
  final Color? color;
  final Size? size;

  const CommonDot({
    super.key,
    this.color,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width ?? 12.24.w,
      height: size?.height ?? 12.24.h,
      decoration: BoxDecoration(
        color: color ?? context.commonColors.textColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
