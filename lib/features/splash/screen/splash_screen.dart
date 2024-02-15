import 'dart:async';
import 'package:flutter/material.dart';
import 'package:reface/features/intro/intro.dart';
import 'package:reface/routing/main_page.dart';
import 'package:reface/shared/shared.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => IntroScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Container(
          child: Image.asset('assets/images/reface_logo.png'),
        ),
      ),
    );
  }
}
