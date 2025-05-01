import 'package:flutter/material.dart';
import 'package:todo_flutter/components/bottom_nav_bar.dart';
import 'package:todo_flutter/const.dart';
import 'package:todo_flutter/pages/cart_page.dart';
import 'package:todo_flutter/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // navigate bottom bar 
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    // item page
    ShopPage(),

    // cart Page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange:(index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}