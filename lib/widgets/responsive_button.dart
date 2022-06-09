import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? text;
  ResponsiveButton({Key? key, this.width, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: AppColors.mainColor,
      ),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset('assets/img/button-one.png')],
      ),
    );
  }
}
