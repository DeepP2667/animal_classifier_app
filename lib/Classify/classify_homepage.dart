import 'dart:io';
import './image_display.dart';

import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'package:animal_classifier/main.dart';
import 'package:animal_classifier/IndexPage/AboutPage/about_page.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  File? _imageFile;
  late InputImage inputImage;
  late int selectedIndex;

  final imageLabeler = GoogleMlKit.vision.imageLabeler();

  Future gallary() async {
    final imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile == null) {
      return null;
    }

    final tempImageFile = File(imageFile.path);
    inputImage = InputImage.fromFilePath(imageFile.path);

    setState(() {
      _imageFile = tempImageFile;
    });

    final List<ImageLabel> labels = await imageLabeler.processImage(inputImage);

    for (ImageLabel label in labels) {
      final String text = label.label;
      final int index = label.index;
      final double confidence = label.confidence;
      print("$text,  $index,  $confidence");
    }

    imageLabeler.close();
  }

  Future camera() async {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (imageFile == null) {
      return null;
    }

    final tempImageFile = File(imageFile.path);
    inputImage = InputImage.fromFilePath(imageFile.path);

    setState(() {
      _imageFile = tempImageFile;
    });

    final List<ImageLabel> labels = await imageLabeler.processImage(inputImage);

    for (ImageLabel label in labels) {
      final String text = label.label;
      final int index = label.index;
      final double confidence = label.confidence;
      print("$text,  $index,  $confidence");
    }

    imageLabeler.close();
  }

  static Color buttonBackgroundColor = Color.alphaBlend(
    const Color(0xFFcc9764),
    const Color(0xFF573625),
  );

  final TextStyle textStyle = GoogleFonts.stoke(
    textStyle: const TextStyle(
      fontSize: 22,
      color: Color(0xFF573625),
      fontWeight: FontWeight.bold,
    ),
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: buttonBackgroundColor,
  );

  // AboutPage x = AboutPage();
  
  @override
  Widget build(BuildContext context) {
    // x.updateFound();
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
                Align(
                  alignment: const Alignment(0, 1),
                  child: Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: ElevatedButton(
                        style: buttonStyle,
                        onPressed: (){print("test- remove later");},
                        child: Text("Classify", style: textStyle),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color(0xFFf7e8e3),
            unselectedItemColor: const Color(0xFF573625),
            selectedItemColor: const Color(0xFF573625),
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