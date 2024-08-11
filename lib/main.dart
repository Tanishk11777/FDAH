import 'package:fdah/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fdah/constants.dart';
import 'package:fdah/responsive.dart';
import 'package:fdah/start/startview.dart';
import 'package:firebase_core/firebase_core.dart';

import 'HomePage/homePage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FADH',
      theme: ThemeData(
        primaryColor: kPrimaryColour,
        scaffoldBackgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: kPrimaryColour,
            shape: const StadiumBorder(),
            minimumSize: const Size(double.infinity,56),
            maximumSize: const Size(double.infinity,56),
          )
        ),
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: kPrimaryLightColour,
          prefixIconColor: kPrimaryColour,
          contentPadding: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: defaultPadding),

          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          )
        )
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}', style: const TextStyle(color: Colors.red));
            }
            final user = FirebaseAuth.instance.currentUser;
            if (user != null) {
              return const HomePage();
            }else {
              return const StartPage();
            }

          default:
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 3, // Adjust the thickness as needed
              ),
            );
        }
      },
    );
  }
}

//TODO: email verification,forgot password,change restaurant list,add cart,make checkout page