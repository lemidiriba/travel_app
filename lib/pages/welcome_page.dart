import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_larg_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 3,
        scrollDirection: Axis.vertical,
        itemBuilder: (_, index) {
          return Container(
            width: double.infinity,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/" + images[index]),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              margin: EdgeInsets.only(top: 150, right: 40, left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 250,
                        child: AppText(
                          text:
                              "All rights reserved. This book or any portion except for the use of brief quotations in a book review",
                          size: 14,
                          color: AppColors.textColor2,
                        ),
                      ),
                      const SizedBox(height: 40),
                      ResponsiveButton()
                    ],
                  ),
                  Column(
                      children: List.generate(3, (listIndex) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 2),
                      width: 8,
                      height: index==listIndex?25:8,
                      decoration: BoxDecoration(
                        color: index==listIndex ? AppColors.mainColor : AppColors.mainColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8)
                      ),
                    );
                  })),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
