import 'package:flutter/material.dart';
import 'package:namer_app/styles/my_text_styles.dart';

class TournamentsScreen extends StatelessWidget {
  const TournamentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Tournaments Screen',
        style: titlePattern
        ),
    );
  }
}