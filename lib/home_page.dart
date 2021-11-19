import 'dart:async';
import 'package:animal_classifier/dunes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';

import 'index_button.dart';
import 'take_picture_button.dart';
import 'dunes.dart';
import 'ground_background.dart';
import 'background.dart';

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
          CustomPaint(
            painter: Background(),
            child: ClipPath(
              clipper: FirstDune(),
              child: Container(
                height: 1.5 * MediaQuery.of(context).size.height / 2,
                color: Colors.blue[100],
              ),
            ),
          ),
          CustomPaint(
            painter: Ground(),
            child: Center(
              child: Stack(
                children: [
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
