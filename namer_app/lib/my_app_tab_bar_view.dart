import 'package:flutter/material.dart';
import 'package:namer_app/screens/athletes_screen.dart';
import 'package:namer_app/screens/home_screen.dart';
import 'package:namer_app/screens/monthly_payments_screen.dart';
import 'package:namer_app/screens/tournaments_screen.dart';
import 'package:namer_app/screens/training_sessions_screen.dart';

class DiaryTabBarView extends StatefulWidget{
  const DiaryTabBarView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DiaryTabBarViewState createState() => _DiaryTabBarViewState();
}

class _DiaryTabBarViewState extends State<DiaryTabBarView> {

  final darkGreen = Color(0xFF08490A);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Futsal Femino UFABC',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: darkGreen
        ),
        body: TabBarView(
          children: [
            TrainigSessionsScreen(),
            TournamentsScreen(),
            HomeScreen(),
            MonthlyPaymentsScreen(),
            AthletesScreen()
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.fitness_center)),
            Tab(icon: Icon(Icons.emoji_events)),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.attach_money)),
            Tab(icon: Icon(Icons.person)),
          ],
          indicatorColor: darkGreen,
          labelColor: darkGreen,
        ),
      ),
    );
  }
}