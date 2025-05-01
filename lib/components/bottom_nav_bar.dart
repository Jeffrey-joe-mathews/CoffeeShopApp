import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: GNav(
        color: Colors.grey.shade400,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.brown,
        rippleColor: Colors.grey.shade200,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.brown),
        tabs: const [
        GButton(
          icon: Icons.home, 
          text: "Home",
        ),
        GButton(
          icon: Icons.shopping_bag_rounded,
          text: "Cart",
        )
      ]),
    );
  }
}