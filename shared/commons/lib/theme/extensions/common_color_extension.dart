import 'package:commons/main.dart';
import 'package:flutter/material.dart';

extension CommonColorExtension on BuildContext {
  CommonColors get commonColors => Theme.of(this).extension<CommonColors>()!;
  Size get screenSize => MediaQuery.sizeOf(this);
}
