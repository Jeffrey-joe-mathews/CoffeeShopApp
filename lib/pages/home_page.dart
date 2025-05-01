import 'package:flutter/material.dart';
import 'package:todo_flutter/components/bottom_nav_bar.dart';
import 'package:todo_flutter/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}