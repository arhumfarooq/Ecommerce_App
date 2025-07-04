import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_apis/services/api_client.dart';
import 'package:practice_apis/services/auth_repositry_api.dart';
import 'package:practice_apis/utils/app_routes.dart';
import 'package:practice_apis/views/Home_Content.dart';
import 'package:practice_apis/views/screens/profile.dart';
import 'package:practice_apis/views/screens/splash_Screen.dart';

void main() {
  Get.put(ApiClient());
  Get.put(AuthRepositryApi());
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
      getPages: AppRoutes.getAppRoutes(),
      home: SplashScreen (),
    );
  }
}
