import 'package:flutter/material.dart';
import 'IndexPage/index_page.dart';

void main() => runApp(IndexButton());

class IndexButton extends StatelessWidget {
  IndexButton({Key? key}) : super(key: key);

  final String indexText = "Index";

  final TextStyle textStyle = TextStyle(
    fontSize: 20,
    color: Colors.grey[700],
    fontWeight: FontWeight.bold,
  );

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
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
          style: buttonStyle,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const IndexPage(),
              ),
            );
          },
          child: Text(
            indexText,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
