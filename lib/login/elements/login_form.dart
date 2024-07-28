import 'package:fdah/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:fdah/components/registredcheck.dart';
import '../../../constants.dart';
import 'package:fdah/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../HomePage/homePage.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

 @override
 State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
 final _formkey = GlobalKey<FormState>();
 final _emailController = TextEditingController();
 final _passwordController = TextEditingController();

  bool _isLoading = false;

  void _signInWithEmailAndPassword() async {
    setState(() {
      _isLoading = true;
    });
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('User not found');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password');
      }else{
        throw Exception(e.toString());
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }

    @override
    void dispose() {
      _emailController.dispose(); //dispose of the controller when the widget is disposed
      _passwordController.dispose();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            cursorColor: kPrimaryColour,
            onSaved: (email) {},
            validator: (value) {
              if(value!.isEmpty){
                return "Please enter your email";
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: "Your email",
              prefixIcon: Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(Icons.person),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              controller: _passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              cursorColor: kPrimaryColour,
              validator: (value) {
                if(value!.isEmpty){
                  return "Please enter your password";
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: "Your password",
                prefixIcon: Padding(
                  padding: EdgeInsets.all(defaultPadding),
                  child: Icon(Icons.lock),
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),
          _isLoading
              ? const CircularProgressIndicator()
              : Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {
                if (_formkey.currentState!.validate()) {
                  _signInWithEmailAndPassword();
                }
              },
              child: Text("Login".toUpperCase(),
                style: const TextStyle(
                  color: Colors.white,
                ),),
            ),
          ),

          const SizedBox(height: defaultPadding),
          RegisteredCheck(
            login: true,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}