import 'package:flutter/material.dart';

import '../constants.dart';


class RegisteredCheck extends StatelessWidget {
  final bool login;
  final Function? press;
  const RegisteredCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          style: const TextStyle(color: kPrimaryColour),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: const TextStyle(
              color: kPrimaryColour,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}