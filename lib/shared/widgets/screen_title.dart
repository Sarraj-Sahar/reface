import 'package:flutter/material.dart';

// create a stateless widget that returns a text widget with the title passed to it
class ScreenTitle extends StatelessWidget {
  final String title;
  const ScreenTitle({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
