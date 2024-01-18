import "package:budgetbuddy/screens/home.dart";
import "package:budgetbuddy/screens/report.dart";
import "package:budgetbuddy/utils/colours.dart";
import "package:flutter/material.dart";

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0;
  final screens = [
    const HomeScreen(),
    const Report(),
  ];
  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: const Color.fromARGB(255, 212, 163, 115),
              labelTextStyle: MaterialStateProperty.all(const TextStyle(
                fontFamily: 'SF Pro',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: appbarcolor,
              ))),
          child: NavigationBar(
            height: 60,
            backgroundColor: backgroundColor,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.comment_bank),
                label: 'Dashboard',
              ),
              NavigationDestination(
                icon: Icon(Icons.lock_clock),
                label: 'Reports',
              ),
            ],
          ),
        ),
      );
}
