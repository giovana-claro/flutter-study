import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:namer_app/my_app_tab_bar_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // The route of the application
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.lime,
        )
      ),
      home: DiaryTabBarView(),
    );
  }
}