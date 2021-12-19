import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'index_button.dart';
import 'take_picture_button.dart';
import 'HomePageArt/dunes.dart';
import 'HomePageArt/ground_background.dart';
import 'HomePageArt/sun.dart';
import 'HomePageArt/sprites.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set device orientation to only be vertical
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Firebase.initializeApp();

  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFF763300).withOpacity(0.9),
          ),
          ClipPath(
            clipper: FirstDune(),
            child: Container(
              height: 1.51 * MediaQuery.of(context).size.height / 2,
              color: const Color(0XFFa84e13),
            ),
          ),
          ClipPath(
            clipper: SecondDune(),
            child: Container(
              height: 1.4 * MediaQuery.of(context).size.height / 2,
              color: const Color(0XFFca6316),
            ),
          ),
          ClipPath(
            clipper: ThirdDune(),
            child: Container(
              height: 1.3 * MediaQuery.of(context).size.height / 2,
              color: const Color(0XFFe17218),
            ),
          ),
          ClipPath(
            clipper: FourthDune(),
            child: CustomPaint(
              painter: Suns(),
              child: Container(
                height: 1.1 * MediaQuery.of(context).size.height / 2,
              ), 
            ),
          ),
          CustomPaint(
            painter: Ground(),
            child: Center(
              child: Stack(
                children: [
                  const Sprites(),
                  TakePicture(),
                  IndexButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
