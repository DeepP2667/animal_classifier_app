import 'package:flutter/material.dart';

import "./header.dart";
import './back_button.dart';
import './undiscovered_row.dart';

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
            color: Color(0XFFBBDEFB),
            thickness: 7.0,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 20.0),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
                        UndiscoveredRow(),
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
