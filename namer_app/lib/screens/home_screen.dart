import 'package:flutter/material.dart';
import 'package:namer_app/styles/my_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Screen',
        style: titlePattern,
        ),
    );
  }
}