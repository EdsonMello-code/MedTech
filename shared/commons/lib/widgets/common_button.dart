import 'package:commons/main.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const CommonButton({
    super.key,
    required this.child,
    this.onPressed,
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
          context.commonColors.mainColor,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
