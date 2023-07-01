import 'package:commons/main.dart';
import 'package:flutter/material.dart';

Widget makeTestable(Widget widget) => MaterialApp(
      home: widget,
      theme: CommonTheme.theme,
    );
