import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/bottom_navigation.dart';
import 'package:practice_apis/models/card_model.dart';
import 'package:practice_apis/views/screens/cart.dart';
import 'package:practice_apis/views/screens/explore.dart';
import 'package:practice_apis/views/screens/home_screen.dart';
import 'package:practice_apis/views/screens/profile.dart';

class HomeContent extends StatefulWidget {
  final CartItem1 cartItems;
  const HomeContent({super.key, required this.cartItems});

  @override
  State<HomeContent> createState() => _ForNavigationState();
}

class _ForNavigationState extends State<HomeContent> {
int selectedIndex = 0;

  late List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
//      HomeScreen(cartItems: widget.cartItems),
      Explore(cartItems:  widget.cartItems,),
      Mycart(cardProduct: widget.cartItems,),
      Profile(),
    ];
  }

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