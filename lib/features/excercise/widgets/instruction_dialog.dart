import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class InstructionDialog extends StatelessWidget {
  String title;
  InstructionDialog({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return SizedBox(
      width: Dimensions.screenWidth! * 90,
      child: Card(
        surfaceTintColor: Colors.transparent,
        color: AppColors.secondary.withOpacity(0.7),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(title,
                style: TextStyle(
                  fontSize: Dimensions.screenHeight! * 3.5,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                )),
          ),
        ),
      ),
    );
  }
}
