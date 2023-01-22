import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  final String btnText;
  final Function btnPressed;
  const Login({Key? key, required this.btnText, required this.btnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ElevatedButton(
        onPressed: () => {btnPressed()},
        child: Text(
          btnText.toUpperCase(),
        ),
      ),
    );
  }
}
