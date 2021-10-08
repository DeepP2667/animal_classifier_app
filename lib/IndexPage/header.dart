import 'package:flutter/material.dart';

class IndexHeader extends StatelessWidget {
  IndexHeader({Key? key}) : super(key: key);

  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    primary: Colors.cyan[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30.0),
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        children: [
          ElevatedButton(
            style: buttonStyle,
            onPressed: null,
            child: Text(
              "<-",
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
