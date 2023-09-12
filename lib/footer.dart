import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final int currentTab;
  final Function(int) onTabClick;

  const Footer({super.key, required this.currentTab, required this.onTabClick});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "search",
        ),
      ],
      currentIndex: currentTab,
      fixedColor: Colors.black,
      onTap: onTabClick,
    );
  }
}
