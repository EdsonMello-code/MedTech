import 'package:commons/main.dart';
import 'package:commons_dependencies/main.dart';
import 'package:flutter/material.dart';

class CommonBackButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const CommonBackButton({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? Modular.to.pop,
      child: CommonImage.arrowBack(),
    );
  }
}
