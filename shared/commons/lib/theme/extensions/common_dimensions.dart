import 'package:flutter/material.dart';

const double widthDefault = 375;
const double heightDefault = 812;

extension CommonDimensions on num {
  Size get _screenSize => Size(
        WidgetsBinding
                .instance.platformDispatcher.views.first.physicalSize.width /
            WidgetsBinding
                .instance.platformDispatcher.views.first.devicePixelRatio,
        WidgetsBinding
                .instance.platformDispatcher.views.first.physicalSize.height /
            WidgetsBinding
                .instance.platformDispatcher.views.first.devicePixelRatio,
      );

  double get h => _calc(this, ResponsiveDirection.height);
  double get w => _calc(this, ResponsiveDirection.width);
  double get p => _calc(this, ResponsiveDirection.height);

  double _calc(num value, direction) {
    final media = direction == ResponsiveDirection.width
        ? _screenSize.width
        : _screenSize.height;

    final valueDefault =
        direction == ResponsiveDirection.width ? widthDefault : heightDefault;

    final percent = value / valueDefault;

    return (media * percent).toDouble();
  }
}

enum ResponsiveDirection { height, width }
