import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/bottom_navigation.dart';
import 'package:practice_apis/views/cart.dart';
import 'package:practice_apis/views/explore.dart';
import 'package:practice_apis/views/home_screen.dart';
import 'package:practice_apis/views/profile.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _ForNavigationState();
}

class _ForNavigationState extends State<HomeContent> {
int selectedIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    Explore(),
    Mycart(),
    Profile(),
  ];

  void onTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: NavigationContainer(
        selectedIndex: selectedIndex,
        onTabChange: onTabChange,
      ),
    );}
}