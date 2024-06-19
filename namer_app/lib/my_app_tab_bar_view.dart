import 'package:flutter/material.dart';
import 'package:namer_app/screens/athletes_screen.dart';
import 'package:namer_app/screens/home_screen.dart';
import 'package:namer_app/screens/monthly_payments_screen.dart';
import 'package:namer_app/screens/tournaments_screen.dart';
import 'package:namer_app/screens/training_sessions_screen.dart';

class MyTabBarView extends StatefulWidget{
  const MyTabBarView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyTabBarViewState createState() => _MyTabBarViewState();
}

class _MyTabBarViewState extends State<MyTabBarView> {

  final darkGreen = Color(0xFF08490A);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Futsal Feminino UFABC',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/escudo_ff.png',
                height: 40
              )
            ]
            ),
          backgroundColor: darkGreen
          ),
        body: TabBarView(
          children: [
            TrainingSessionsScreen(),
            TournamentsScreen(),
            HomeScreen(),
            MonthlyPaymentsScreen(),
            AthletesScreen()
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.sports_soccer)),
            Tab(icon: Icon(Icons.emoji_events)),
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.attach_money)),
            Tab(icon: Icon(Icons.directions_run)),
          ],
          indicatorColor: darkGreen,
          labelColor: darkGreen,
        ),
      ),
    );
  }
}