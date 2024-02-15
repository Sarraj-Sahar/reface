import 'package:flutter/material.dart';
import 'package:reface/shared/shared.dart';
import 'package:google_fonts/google_fonts.dart';

// create a stateless widget that returns a text widget with the title passed to it
class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Dimensions.screenHeight! * 0.5,
          horizontal: Dimensions.screenWidth! * 1),
      child: Text(
        title,
        style: TextStyle(
          fontSize: Dimensions.screenHeight! * 2.2,
          color: AppColors.mainTextBlack,
          fontWeight: FontWeight.bold,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      ),
    );
  }
}
