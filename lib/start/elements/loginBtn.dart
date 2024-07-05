import 'package:fdah/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:fdah/constants.dart';

class LoginSignupBtn extends StatelessWidget {
  const LoginSignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(tag: "login_btn", child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
          },
          child: Text("Login".toUpperCase(),style: const TextStyle(color: Colors.white),),
        )),
        const SizedBox(height: defaultPadding),
        Hero(tag: "signup_btn", child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryLightColour,
            elevation: 0,
          ),
          onPressed: (){},
          child: Text("Sign Up".toUpperCase(),style: TextStyle(color: Colors.black),),
        )),
      ],
    );
  }
}
