import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class ProgressCard extends StatelessWidget {
  String title;
  String value;

  ProgressCard({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return SizedBox(
      height: Dimensions.screenHeight! * 6,
      width: Dimensions.screenWidth! * 40,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(width: 0.5, color: AppColors.lightGrey),
        ),
        color: Colors.white,
        surfaceTintColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title),
            Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
