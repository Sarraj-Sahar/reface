import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

// create a stateless widget that returns a text widget with the title passed to it
class ScreenTitle extends StatelessWidget {
  final String title;
  const ScreenTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context
    return Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: Dimensions.screenHeight! * 3,
          color: AppColors.mainTextBlack,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}
