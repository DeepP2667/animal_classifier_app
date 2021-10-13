import 'package:flutter/material.dart';

class ImageDisplay extends StatelessWidget {

  final dynamic imageFile;

  const ImageDisplay({Key? key, required this.imageFile}) : super(key: key);

  Widget checkImage() {
    if (imageFile == null) {
      return const Text("No Image Loaded");
    }

    return Image.file(
      imageFile,
      height: 200,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, -0.5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FittedBox(
          child: checkImage(),
          fit: imageFile != null ? BoxFit.contain : BoxFit.none,
        ),
      ),
    );
  }
}
