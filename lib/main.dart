import 'package:fdah/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:fdah/constants.dart';
import 'package:fdah/responsive.dart';
import 'package:fdah/start/startview.dart';
import 'package:firebase_core/firebase_core.dart';

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
      home: const StartPage(),
    );
  }
}
