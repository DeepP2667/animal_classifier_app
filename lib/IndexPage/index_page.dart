import 'package:flutter/material.dart';

import "./header.dart";
import './back_button.dart';
import './undiscovered_row.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key? key}) : super(key: key);

  final backgroundColor = Color.alphaBlend(
    const Color(0xFFb2b2b2),
    const Color(0xFF27282d),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            IndexHeader(),
            Divider(
              color: const Color(0XFF27282d).withOpacity(0.4),
              thickness: 7.0,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20.0),
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
