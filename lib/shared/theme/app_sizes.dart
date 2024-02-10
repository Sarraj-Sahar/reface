import 'package:flutter/material.dart';

class Dimensions {
  static double? screenWidth;
  static double? screenHeight;

  Dimensions(context) {
    screenWidth = MediaQuery.of(context).size.height / 100;
    screenHeight = MediaQuery.of(context).size.width / 100;
  }
}
