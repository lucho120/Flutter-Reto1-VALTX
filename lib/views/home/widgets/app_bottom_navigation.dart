import 'package:flutter/material.dart';

class AppBottomNavigation extends StatelessWidget {
  const AppBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 30.0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.indigo,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.apps_sharp), label: 'Apps'),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on), label: 'Location'),
        BottomNavigationBarItem(
            icon: Icon(Icons.wallet_outlined), label: 'Wallet'),
        BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz_rounded), label: 'More')
      ],
    );
  }
}
