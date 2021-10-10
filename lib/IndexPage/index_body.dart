import "package:flutter/material.dart";

import './back_button.dart';

class IndexBody extends StatelessWidget {
  const IndexBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 20.0, left: 15.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color(0XFFE3F2FD),
              Color(0XFFECEFF1),
            ],
          ),
        ),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text("hi", style: TextStyle(fontSize: 50)),
                ],
              ),
            ),
            IndexBackButton(),
          ],
        ),
      ),
    );
  }
}
