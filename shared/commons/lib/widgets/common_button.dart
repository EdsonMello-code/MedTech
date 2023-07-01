import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final OutlinedBorder? border;

  const CommonButton({
    super.key,
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: MaterialStatePropertyAll(
          Size(
            context.screenSize.width,
            50.w,
          ),
        ),
        backgroundColor: MaterialStatePropertyAll(
          backgroundColor ?? context.commonColors.mainColor,
        ),
        shape: MaterialStatePropertyAll(
          border,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
