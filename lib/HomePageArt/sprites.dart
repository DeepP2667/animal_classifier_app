import 'package:flutter/material.dart';
import 'dart:math' as math;

class Sprites extends StatelessWidget {
  const Sprites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height / 1.3,
          left: MediaQuery.of(context).size.width * 0.05,
          child: Image.asset(
            "app_assets/PNG/decor_6.png",
            width: 50,
            height: 75,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2.45,
          left: MediaQuery.of(context).size.width * 0.01,
          child: Image.asset(
            "app_assets/PNG/tree_5.png",
            width: 100,
            height: 300,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2.45,
          left: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            "app_assets/PNG/tree_10.png",
            width: 100,
            height: 300,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2.43,
          left: MediaQuery.of(context).size.width * 0.5,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Image.asset(
              "app_assets/PNG/tree_10.png",
              width: 100,
              height: 300,
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.9,
          left: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            "app_assets/PNG/stones_9.png",
            width: 100,
            height: 300,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.5,
          left: MediaQuery.of(context).size.width * 0.07,
          child: Image.asset(
            "app_assets/PNG/stones_7.png",
            width: 50,
            height: 100,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.5,
          left: MediaQuery.of(context).size.width * 0.01,
          child: Image.asset(
            "app_assets/PNG/stones_6.png",
            width: 50,
            height: 100,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.45,
          left: MediaQuery.of(context).size.width * 0.9,
          child: Image.asset(
            "app_assets/PNG/greenery_10.png",
            width: 50,
            height: 75,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.44,
          left: MediaQuery.of(context).size.width * 0.85,
          child: Image.asset(
            "app_assets/PNG/greenery_6.png",
            width: 50,
            height: 75,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.6,
          left: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            "app_assets/PNG/stones_10.png",
            width: 300,
            height: 500,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 1.3,
          right: MediaQuery.of(context).size.width * 0.6,
          child: Image.asset(
            "app_assets/PNG/stones_11.png",
            width: 300,
            height: 300,
          ),
        ),
      ],
    );
  }
}
