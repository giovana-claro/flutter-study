import 'package:flutter/material.dart';
import 'package:namer_app/styles/my_text_styles.dart';

class MonthlyPaymentsScreen extends StatelessWidget {
  const MonthlyPaymentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Monthly Payments Screen',
        style: titlePattern
        ),
    );
  }
}