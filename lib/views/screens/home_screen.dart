import 'package:excercise_app_ui/views/pages/exercise_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<BottomNavigationBarItem> _items = const [
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.calendar), label: "Today"),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.weightHanging), label: "All Exercises"),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.gear), label: "Settings"),
  ];

  final List<Widget> _pages = const [
    HomePage(),
    ExercisePage(),
    Text("Settings Page")
  ];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 16,
          items: _items,
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
