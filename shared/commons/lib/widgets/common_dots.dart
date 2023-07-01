import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class CommonDots extends StatelessWidget {
  final int dotsLenght;
  final int currentIndexDot;

  const CommonDots({
    super.key,
    required this.dotsLenght,
    required this.currentIndexDot,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        dotsLenght,
        (index) => Padding(
          padding: EdgeInsets.only(right: 8.0.w),
          child: TweenAnimationBuilder<double>(
              duration: const Duration(
                milliseconds: 1000,
              ),
              tween: Tween(
                begin: 0.0,
                end: 1.0,
              ),
              builder: (context, interpolation, _) {
                return CommonDot(
                  size: Size(4.w, 4.w),
                  color: currentIndexDot < index
                      ? context.commonColors.textColor
                      : context.commonColors.mainColor,
                );
              }),
        ),
      ),
    );
  }
}
