import 'dart:io';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {

  File? _imageFile;


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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Main screen"),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Text("No image"),
                ElevatedButton(
                  onPressed: gallary,
                  child: _imageFile == null ? const Text("Press") : Image.file(_imageFile!),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
