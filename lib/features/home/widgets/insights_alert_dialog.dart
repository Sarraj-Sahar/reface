import 'package:flutter/material.dart';
import 'package:reface/shared/theme/app_colors.dart';
import 'package:reface/shared/theme/app_sizes.dart';

class InsightsAlertDialog extends StatelessWidget {
  const InsightsAlertDialog({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Insights',
                  style: TextStyle(
                    fontSize: Dimensions.screenHeight! * 2.2,
                    color: AppColors.primary,
                    fontWeight: FontWeight.normal,
                  )),
              Text(
                  'Insights about your recovery progress will be provided soon.'),
            ],
          ),
        ),
      ),
    );
  }
}
