import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? isButtonResponsive;
  bool? text;
  
  ResponsiveButton({Key? key, this.width, this.text,this.isButtonResponsive =false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7.0),
        color: AppColors.mainColor,
      ),
      child: Row(
        mainAxisAlignment: isButtonResponsive == true ? MainAxisAlignment.spaceBetween:  MainAxisAlignment.center,
        children: [
          isButtonResponsive== true ? AppText(text: "Book Trip Now", color:   Colors.white,):SizedBox.shrink(),
          Image.asset('assets/img/button-one.png'),
        ],
      ),
    );
  }
}
