import 'package:flutter/material.dart';
import 'package:projectone/Screen-s/Home.dart';
import 'package:projectone/Screen-s/Investmentactive.dart';
import 'package:projectone/Screen-s/ReferralScreen.dart';
import 'package:projectone/Screen-s/settings.dart';

class Menubar extends StatefulWidget {
  const Menubar({Key? key}) : super(key: key);

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  int currentIndex = 0;
  final Screens = [
    const HomeScreen(),
    const InvestmentActive(),
    const RefferalScreen(),
    const Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 101, 101, 101),
        selectedFontSize: 15,
        unselectedFontSize: 13,
        backgroundColor: const Color.fromARGB(255, 1, 1, 60),
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.attach_money,
            ),
            label: 'invesment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'referrals',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'settings',
          )
        ],
      ),
    );
  }
}
