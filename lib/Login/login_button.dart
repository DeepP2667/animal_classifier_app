import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(1, 0.5),
      child:Container(
      padding: const EdgeInsets.all(3),
      child: const ElevatedButton(
        child: Text('LOGIN'),
        onPressed: null,
      ),
      ),
    );
  }
}
