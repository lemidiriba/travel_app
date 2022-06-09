import 'dart:ui';

import 'package:flutter/material.dart';

class AppLargText extends StatelessWidget {
  String text;
  double size;
  Color color;
  AppLargText(
      {Key? key, required this.text, this.color = Colors.black, this.size = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
