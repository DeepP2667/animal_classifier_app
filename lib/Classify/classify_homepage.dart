import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import './image_display.dart';
import 'package:animal_classifier/main.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _imageFile;

  late int selectedIndex;

  Future gallary() async {
    final imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile == null) {
      return null;
    }

    final tempImageFile = File(imageFile.path);

    setState(() {
      _imageFile = tempImageFile;
    });
  }

  Future camera() async {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (imageFile == null) {
      return null;
    }

    final tempImageFile = File(imageFile.path);

    setState(() {
      _imageFile = tempImageFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF04323a),
                Color(0xFF0b8eab),
                Color(0xFFd1dcde),
              ],
            ),
          ),
          child: Center(
            child: Stack(
              children: <Widget>[
                ImageDisplay(imageFile: _imageFile),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFFf7e8e3),
            unselectedItemColor: Color(0xFF573625),
            selectedItemColor: Color(0xFF573625),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.arrow_back_ios_new_outlined),
                label: 'Back',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.camera_alt_rounded),
                label: 'Camera',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_photo_alternate_rounded),
                label: 'Gallary',
              )
            ],
            onTap: (int selectedIndex) {
              switch (selectedIndex) {
                case 0:
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                    break;
                  }

                case 1:
                  {
                    camera();
                    break;
                  }

                case 2:
                  {
                    gallary();
                    break;
                  }
              }
            }),
      ),
    );
  }
}
