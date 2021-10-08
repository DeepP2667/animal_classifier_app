import 'package:flutter/material.dart';

import "./header.dart";

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  IndexHeader(),
                  const Text("hi", style: TextStyle(fontSize: 50)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
