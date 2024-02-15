import 'package:flutter/material.dart';
import 'package:reface/features/home/widgets/home_alert_dialog.dart';
import 'package:reface/features/home/widgets/home_calendar.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Dimensions(context); //initializing context

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: Dimensions.screenWidth! * 8,
            horizontal: Dimensions.screenWidth! * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: ScreenTitle(title: "Home")),
            HomeAlertDialog(),
            SizedBox(height: Dimensions.screenHeight! * 4),
            ScreenTitle(title: "Calendar"),
            HomeCalendar()
          ],
        ),
      ),
    );
  }
}
