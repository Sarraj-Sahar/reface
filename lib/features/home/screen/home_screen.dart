import 'package:flutter/material.dart';
import 'package:reface/features/home/widgets/home_alert_dialog.dart';
import 'package:reface/features/home/widgets/home_calendar.dart';
import 'package:reface/features/home/widgets/insights_alert_dialog.dart';
import 'package:reface/features/home/widgets/recovery_progress.dart';
import 'package:reface/shared/shared.dart';
import 'package:reface/shared/widgets/screen_title.dart';
import 'package:reface/shared/widgets/section_title.dart';

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
            const Center(child: ScreenTitle(title: "Home")),
            const HomeAlertDialog(),
            SizedBox(height: Dimensions.screenHeight! * 2.5),
            const SectionTitle(title: "Calendar"),
            const HomeCalendar(),
            SizedBox(height: Dimensions.screenHeight! * 3),
            const SectionTitle(title: "Asymmetry Detection"),
            const InsightsAlertDialog(),
            SizedBox(height: Dimensions.screenHeight! * 3),
            const SectionTitle(title: "Recovery Progress"),
            SizedBox(height: Dimensions.screenHeight! * 2),
            const RecoveryProgress()
          ],
        ),
      ),
    );
  }
}
