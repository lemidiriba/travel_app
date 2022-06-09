import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/app_larg_text.dart';
import 'package:travel_app/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "balloning.png":"Balloning",
    "hiking.png": "Hiking",
    "kayaking.png" : "Kayaking",
    "snorkling.png" : "Snorkling"

  };
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 20,
                  color: Colors.black54,
                ),
                Container(
                    margin: const EdgeInsets.only(right: 10),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black54)),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargText(text: "Discover"),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 20, right: 20),
                unselectedLabelColor: Colors.grey,
                indicator:
                    CircularTabIndicator(color: AppColors.mainColor, radius: 4),
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Emotions"),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext buildContext, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 220,
                      height: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/img/mountain.jpeg'))),
                    );
                  },
                ),
                Text("tow"),
                Text("three"),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargText(
                  text: "Explore More",
                  size: 22,
                  color: Colors.black87,
                ),
                AppText(
                  text: "See All",
                  color: AppColors.textColor1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            height: 120,
            width: double.maxFinite,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: ((context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: const EdgeInsets.only(right: 30, left: 15),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/img/" + images.keys.elementAt(index),
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    AppText(text: images.values.elementAt(index),color: AppColors.textColor2,)
                  ],
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}

class CircularTabIndicator extends Decoration {
  final Color color;
  final double radius;

  CircularTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CircularIndicator(color: color, radius: radius);
  }
}

class _CircularIndicator extends BoxPainter {
  final Color color;
  final double radius;

  _CircularIndicator({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();

    _paint.color = color;
    _paint.isAntiAlias = true;

    final offsetCircle = Offset(configuration.size!.width / 2 - radius,
        configuration.size!.height - radius);

    canvas.drawCircle(offset + offsetCircle, radius, _paint);
  }
}
