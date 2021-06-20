import 'package:flutter/material.dart';
import 'package:sign_app/screens/auth/login_auth_screen.dart';
import 'package:sign_app/screens/auth/register_auth_screen.dart';
import 'package:sign_app/screens/on_boarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}