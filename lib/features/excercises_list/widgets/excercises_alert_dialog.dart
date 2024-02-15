import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class ExcercisesAlertDialog extends StatelessWidget {
  const ExcercisesAlertDialog({Key? key, required this.title})
      : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    Dimensions(context);
    return
        //TODO: add Dissmissible widget
        SizedBox(
      width: double.infinity,
      child: Card(
        surfaceTintColor: Colors.transparent,
        color: AppColors.secondary,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: Dimensions.screenWidth! * 2,
                ),
                child: Icon(Icons.timer_outlined,
                    color: AppColors.mainTextBlack,
                    size: Dimensions.screenHeight! * 2),
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
