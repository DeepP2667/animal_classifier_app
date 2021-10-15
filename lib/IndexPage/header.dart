import 'package:flutter/material.dart';

import './header_title.dart';

class IndexHeader extends StatelessWidget {
  IndexHeader({Key? key}) : super(key: key);

  final backgroundColor = Color.alphaBlend(
    const Color(0xFFb2b2b2),
    const Color(0xFF27282d),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      color: backgroundColor,
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          HeaderTitle(),
        ],
      ),
    );
  }
}
