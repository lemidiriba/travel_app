import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

import 'app_text.dart';

class AppButton extends StatelessWidget {
  String? text;
  int? selectedButton;
  final double size;
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  IconData? icon;
  bool? isIcon;
  AppButton(
      {Key? key,
      this.text,
      required this.color,
      this.icon,
      required this.backgroundColor,
      this.isIcon = false,
      required this.size,
      required this.borderColor,this.selectedButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(20),
        color:  backgroundColor,
      ),
      child: isIcon == true
          ? Center(
              child: Icon(
                icon,
                color: color,
              ),
            )
          : Center(child: AppText(text: text!,color: color,)),
    );
  }
}
