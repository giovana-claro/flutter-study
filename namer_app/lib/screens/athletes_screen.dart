import 'package:flutter/material.dart';
import 'package:namer_app/styles/my_text_styles.dart';

class AthletesScreen extends StatelessWidget {
  const AthletesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Athletes Screen',
        style: titlePattern
        )
    );
  }
}