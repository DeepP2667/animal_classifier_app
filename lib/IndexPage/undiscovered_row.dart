import 'package:flutter/material.dart';

import './undiscovered_icon.dart';

class UndiscoveredRow extends StatelessWidget {
  const UndiscoveredRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        UndiscoveredIcon(),
        UndiscoveredIcon(),
        UndiscoveredIcon(),
        UndiscoveredIcon(),
      ],
    );
  }
}
