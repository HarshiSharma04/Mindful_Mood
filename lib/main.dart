import 'package:flutter/material.dart';
import 'package:mindful_mood/homepage.dart';
import 'package:mindful_mood/journal.dart';
import 'package:mindful_mood/login_page.dart';
import 'package:mindful_mood/signup_page.dart';
import 'package:mindful_mood/therapy.dart';
import 'package:mindful_mood/welcome_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      home: WelcomePage(),

    );
  }
}
