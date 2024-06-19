import 'package:flutter/material.dart';
import 'package:namer_app/styles/my_text_styles.dart';

class TrainingSessionsScreen extends StatelessWidget {
  const TrainingSessionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Training Sessions Screen',
        style: titlePattern
      ),
    );
  }
}