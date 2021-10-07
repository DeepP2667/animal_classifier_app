import 'package:flutter/material.dart';

void main() => runApp(Index());

class Index extends StatelessWidget {
  Index({Key? key}) : super(key: key);

  final String indexText = "Index";

  final ButtonStyle style = ElevatedButton.styleFrom(
    primary: Colors.cyan[100],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.6),
      child: Container(
        width: 200,
        height: 100,
        padding: const EdgeInsets.all(12.0),
        child: ElevatedButton(
          onPressed: null,
          child: Text(
            indexText,
            style: const TextStyle(fontSize: 20),
          ),
          style: style,
        ),
      ),
    );
  }
}
