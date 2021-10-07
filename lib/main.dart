import 'package:flutter/material.dart';

import './take_picture.dart';
import './index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Scaffold( 
        backgroundColor: Colors.amber[100],
        body: Center(
            child: Stack(
              children: [ 
                TakePicture(),
                Index(),
              ],
            ),
          ),
        ),
    );
  }
}
