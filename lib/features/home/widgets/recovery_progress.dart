import 'package:flutter/material.dart';

import 'recovery_progress_card.dart';

class RecoveryProgress extends StatelessWidget {
  const RecoveryProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RecoveryProgressCard(
          title: '41',
          description: "Days to recovery",
        ),
        RecoveryProgressCard(
          title: '42 min',
          description: "Average  daily time",
        ),
        RecoveryProgressCard(
          title: '13',
          description: "Days since diagnosis",
        ),
      ],
    );
  }
}
