import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mcb_app/screens/screen_exports.dart';

class TabNavigation extends StatefulWidget {
  const TabNavigation({super.key});

  @override
  State<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends State<TabNavigation> {
  int currentIndex = 0;
  List<Widget> widgets = [
    const HomeScreen(),
    const PlanScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color(0xFF938EFF),
        unselectedItemColor: Colors.grey,
        onTap: (navIndex) {
          setState(
            () {
              currentIndex = navIndex;
            },
          );
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.homeOutline),
            activeIcon: Icon(EvaIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.creditCardOutline),
            activeIcon: Icon(EvaIcons.creditCard),
            label: 'Service',
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.personOutline),
            activeIcon: Icon(EvaIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
