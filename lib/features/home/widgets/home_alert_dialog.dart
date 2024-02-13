import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class HomeAlertDialog extends StatelessWidget {
  const HomeAlertDialog({super.key});

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
                child: Icon(Icons.info,
                    color: AppColors.primary,
                    size: Dimensions.screenHeight! * 4.5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('News and alerts',
                      style: TextStyle(
                        fontSize: Dimensions.screenHeight! * 2.2,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w600,
                      )),
                  Text('Your next appointment is in 3 days.'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
