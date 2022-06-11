import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_button.dart';
import 'package:travel_app/widgets/app_larg_text.dart';
import 'package:travel_app/widgets/app_text.dart';
import 'package:travel_app/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int givenStars = 4;
  int selectedButton = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                width: double.maxFinite,
                height: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/mountain.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 10,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 300,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargText(
                          text: "Yosemite",
                          color: Colors.black54,
                        ),
                        AppLargText(
                          text: "\$ 250",
                          color: AppColors.textColor1,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.textColor1,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "USA, California",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(
                                Icons.star,
                                color: givenStars < index
                                    ? AppColors.textColor1
                                    : AppColors.starColor,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    AppLargText(
                      text: "People",
                      size: 22,
                    ),
                    AppText(
                      text: "Number of People in your group",
                      color: Colors.black54,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  selectedButton = index;
                                });
                              },
                              child: AppButton(
                                color: selectedButton == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedButton == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                size: 60,
                                borderColor: AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AppLargText(
                      text: "Description",
                      size: 22,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                      text:
                          "Yosemite National Park is located in central sioma navada in US state of california it is located near the wild protection areas.",
                      color: AppColors.textColor2,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 10,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                      color: AppColors.mainColor,
                      backgroundColor: AppColors.buttonBackground,
                      size: 70,
                      borderColor: AppColors.mainColor,
                      icon: Icons.favorite_border_outlined,
                      isIcon: true,
                    ),
                    SizedBox(width: 20,),
                   Flexible(child:  ResponsiveButton(isButtonResponsive: true,))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
