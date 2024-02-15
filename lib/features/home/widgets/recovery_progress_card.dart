import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class RecoveryProgressCard extends StatelessWidget {
  const RecoveryProgressCard(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return SizedBox(
      width: Dimensions.screenWidth! * 25,
      height: Dimensions.screenHeight! * 12,
      child: Card(
        surfaceTintColor: Colors.transparent,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title!,
                style: TextStyle(
                  fontSize: Dimensions.screenHeight! * 2.2,
                  color: AppColors.primary,
                  fontWeight: FontWeight.w800,
                )),
            Center(
              child: Text(
                description!,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
