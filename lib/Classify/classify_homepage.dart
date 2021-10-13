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
              colors: [
                Color(0xFFD6D6D6),
                Color(0xFFEEEEEE),
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
            backgroundColor: Colors.teal[100],
            unselectedItemColor: Colors.blueGrey[700],
            selectedItemColor: Colors.blueGrey[700],
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
