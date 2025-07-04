// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:practice_apis/services/auth_repositry_api.dart';
// import 'package:practice_apis/utils/routes_name.dart';

// class Authcontroller extends GetxController{

// final AuthRepositryApi _authRepo= Get.find<AuthRepositryApi>();
//    isLoading. = false;
//   final usernameController= TextEditingController();
//   final passwordController= TextEditingController();


// void loginUser({
// required String username,
// required String password,
// })async{
//   _authRepo.loginUser(username: username, password: password, onSuccess: () { 

// isLoading= false as RxBool;
// Get.snackbar("Success", "Login Success");
// Get.toNamed(RoutesName.Home_Content);

//    },
//    onError : (e) {  
//     isLoading= false as RxBool;
//     Get.snackbar("Error", e.toString());
//     },
  
  
  
  
  
//   );
// }


// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_apis/services/auth_repositry_api.dart'; // Make sure this path is correct
import 'package:practice_apis/utils/routes_name.dart'; // Make sure this path is correct for your routes

class Authcontroller extends GetxController {

  final AuthRepositryApi _authRepo = Get.find<AuthRepositryApi>();

  RxBool isLoading = false.obs;


  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();



  @override
  void onClose() {
    usernameController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  // Method to handle user login
  Future<void> loginUser({
    required String username,
    required String password,
  }) async {
    isLoading.value = true; 

    try {
   
      await _authRepo.loginUser(
        username: username,
        password: password, onSuccess: () {  Get.snackbar("Success", "Login Success");
 Get.toNamed(RoutesName.Home_Content);
 }, onError: (e) {  
 Get.snackbar("Success", "Login Success");
Get.toNamed(RoutesName.Home_Content);


 },
      );

      Get.snackbar(
        "Success",
        "Login Successful!",
        colorText: Colors.white,
     backgroundColor: Color(0xff3c3c3c),
        snackPosition: SnackPosition.TOP,
      );

      Get.offAllNamed(RoutesName.Home_Content);

    } catch (e) {
      String errorMessage = "An unexpected error occurred.";
      if (e is String) {
        errorMessage = e; 
      } else if (e is Error) { // Catch Dart Error types
        errorMessage = e.toString();
      } else if (e is Exception) { // Catch Dart Exception types
        errorMessage = e.toString();
      }
      
      Get.snackbar(
        "Error",
        errorMessage,
        colorText: Colors.white,
    
        snackPosition: SnackPosition.BOTTOM,
      );
      print("Login Error: $e"); 
    } finally {
      isLoading.value = false; 
    }
  }
}