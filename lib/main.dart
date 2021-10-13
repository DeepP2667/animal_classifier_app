import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './take_picture_button.dart';
import './index_button.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Color(0XFFFFE082),
                Color(0XFFFFE0B2),
              ],
            ),
          ),
          child: Center(
            child: Stack(
              children: [
                TakePicture(),
                IndexButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
