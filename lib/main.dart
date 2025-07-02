import 'package:flutter/material.dart';
import 'package:practice_apis/components/bottom_navigation.dart';
import 'package:practice_apis/views/Home_Content.dart';
import 'package:practice_apis/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeContent(),
    );
  }
}
