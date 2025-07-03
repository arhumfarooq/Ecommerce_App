import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:practice_apis/components/bottom_navigation.dart';
import 'package:practice_apis/views/Home_Content.dart';
import 'package:practice_apis/views/detailed_screen.dart';
import 'package:practice_apis/views/screens/home_screen.dart';
import 'package:practice_apis/views/screens/login_screen.dart';
import 'package:practice_apis/views/screens/reset_password.dart';
import 'package:practice_apis/views/screens/signup_screen.dart';
import 'package:practice_apis/views/screens/splash_Screen.dart';
import 'package:practice_apis/views/screens/verify_otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: VerifyOtp (),
    );
  }
}
