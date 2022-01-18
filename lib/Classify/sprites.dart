import 'package:flutter/material.dart';
import 'dart:math' as math;

class ClassifySprites extends StatelessWidget {
  const ClassifySprites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          bottom: deviceHeight * 0.8,
          left: deviceWidth * 0.43,
          child: Image.asset(
            "app_assets/PNG/tree_7.png",
            width: 80,
            height: 180,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.55,
          right: deviceWidth / 5.2,
          child: Image.asset(
            "app_assets/PNG/road_top.png",
            width: 53,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.662,
          left: deviceWidth * 0.68,
          child: Image.asset(
            "app_assets/PNG/road_middle_vertical.png",
            width: 72,
            height: 70,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.8,
          left: deviceWidth * 0.681,
          child: Image.asset(
            "app_assets/PNG/road_right_corner.png",
            width: 60,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          left: deviceWidth * 0.554,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          left: deviceWidth * 0.314,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          left: deviceWidth * 0.434,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.68,
          left: deviceWidth * 0.25,
          child: Image.asset(
            "app_assets/PNG/road_top.png",
            width: 53,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.637,
          left: deviceWidth * 0.25,
          child: Image.asset(
            "app_assets/PNG/road_middle_vertical.png",
            width: 72,
            height: 70,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.6,
          left: deviceWidth * 0.25,
          child: Image.asset(
            "app_assets/PNG/road_middle_vertical.png",
            width: 72,
            height: 70,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.555,
          left: deviceWidth * 0.251,
          child: Image.asset(
            "app_assets/PNG/road_middle_intersect.png",
            width: 59,
            height: 76,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          right: deviceWidth * 0.664,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          right: deviceWidth * 0.784,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.85,
          right: deviceWidth * 0.9,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.49,
          left: deviceWidth * 0.55,
          child: Image.asset(
            "app_assets/PNG/tree_10.png",
            width: 75,
            height: 275,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.7,
          right: deviceWidth * 0.32,
          child: Image.asset(
            "app_assets/PNG/stones_3.png",
            width: 28,
            height: 40,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.67,
          right: deviceWidth * 0.37,
          child: Image.asset(
            "app_assets/PNG/stones_3.png",
            width: 28,
            height: 40,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.5,
          right: deviceWidth / 1.8,
          child: Image.asset(
            "app_assets/PNG/building_1.png",
            width: 200,
            height: 300,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.3,
          left: deviceWidth / 2,
          child: Image.asset(
            "app_assets/PNG/building_2.png",
            width: 250,
            height: 175,
          ),
        ),
        Positioned(
          bottom: deviceHeight / 1.5,
          right: deviceWidth / 6.5,
          child: Image.asset(
            "app_assets/PNG/building_3.png",
            width: 90,
            height: 175,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.65,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/stones_1.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.58,
          left: deviceWidth * 0.37,
          child: Image.asset(
            "app_assets/PNG/tree_10.png",
            width: 75,
            height: 275,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.55,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/tree_5.png",
            width: 70,
            height: 270,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.65,
          right: deviceWidth * 0.9,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.62,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.61,
          right: deviceWidth * 0.56,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "app_assets/PNG/decor_3.png",
              width: 28,
              height: 50,
            ),
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.76,
          right: deviceWidth * 0.42,
          child: Image.asset(
            "app_assets/PNG/stones_3.png",
            width: 28,
            height: 40,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.52,
          left: deviceWidth * 0.84,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "app_assets/PNG/tree_5.png",
              width: 70,
              height: 270,
            ),
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.55,
          left: deviceWidth * 0.9,
          child: Image.asset(
            "app_assets/PNG/stones_6.png",
            width: 50,
            height: 150,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.58,
          left: deviceWidth * 0.82,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.68,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.56,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.44,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.32,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.2,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          right: deviceWidth * 0.08,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          left: deviceWidth * 0.829,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          bottom: deviceHeight * 0.275,
          left: deviceWidth * 0.875,
          child: Image.asset(
            "app_assets/PNG/road_middle_horizontal.png",
            width: 87,
            height: 75,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.5,
          left: deviceWidth * 0.3,
          child: Image.asset(
            "app_assets/PNG/tree_5.png",
            width: 70,
            height: 270,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.59,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/stones_6.png",
            width: 100,
            height: 270,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.62,
          right: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/stones_5.png",
            width: 100,
            height: 270,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.62,
          left: deviceWidth * 0.1,
          child: Image.asset(
            "app_assets/PNG/tree_9.png",
            width: 100,
            height: 270,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.62,
          left: deviceWidth * 0.65,
          child: Image.asset(
            "app_assets/PNG/lake.png",
            width: 300,
            height: 200,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.62,
          left: deviceWidth * 0.8,
          child: Image.asset(
            "app_assets/PNG/tree_1.png",
            width: 100,
            height: 270,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.62,
          left: deviceWidth * 0.7,
          child: Image.asset(
            "app_assets/PNG/tree_3.png",
            width: 60,
            height: 70,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.7,
          left: deviceWidth * 0.6,
          child: Image.asset(
            "app_assets/PNG/tree_3.png",
            width: 60,
            height: 70,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.58,
          left: deviceWidth * 0.85,
          child: Image.asset(
            "app_assets/PNG/tree_6.png",
            width: 90,
            height: 90,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.7,
          left: deviceWidth * 0.5,
          child: Image.asset(
            "app_assets/PNG/greenery_6.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.8,
          left: deviceWidth * 0.3,
          child: Image.asset(
            "app_assets/PNG/greenery_6.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.8,
          left: deviceWidth * 0.6,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.6,
          left: deviceWidth * 0.55,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 28,
            height: 50,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.72,
          left: deviceWidth * 0.7,
          child: Image.asset(
            "app_assets/PNG/stones_9.png",
            width: 50,
            height: 150,
          ),
        ),
        Positioned(
          top: deviceHeight * 0.47,
          right: deviceWidth * 0.84,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "app_assets/PNG/tree_5.png",
              width: 70,
              height: 270,
            ),
          ),
        ),
      ],
    );
  }
}
