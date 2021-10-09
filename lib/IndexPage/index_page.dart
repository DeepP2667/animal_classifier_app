import 'package:flutter/material.dart';

import "./header.dart";
import './back_button.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      body: Column(
        children: [
          IndexHeader(),
          const Divider(
            color: Color(0XFFB3E5FC),
            thickness: 10.0,
          ),
          Expanded(
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
          ),
        ],
      ),
    );
  }
}
