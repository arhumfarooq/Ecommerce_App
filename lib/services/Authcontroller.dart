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
  // Get the instance of AuthRepositryApi from GetX's dependency injection.
  // IMPORTANT: Ensure AuthRepositryApi is registered with Get.put() or Get.lazyPut()
  // in your main.dart or a binding class BEFORE Authcontroller is initialized.
  final AuthRepositryApi _authRepo = Get.find<AuthRepositryApi>();

  // Observable boolean to manage loading state in the UI (e.g., for a loading spinner)
  // Use .obs for reactive variables
  RxBool isLoading = false.obs;

  // Text editing controllers for UI input fields
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Override onInit to perform any setup when the controller is first created
  @override
  void onInit() {
    super.onInit();
    // Optional: Pre-fill for testing during development
    // usernameController.text = 'kminchelle'; // Example username from dummyjson
    // passwordController.text = '0lelplR';    // Example password from dummyjson
  }

  // Override onClose to dispose of resources when the controller is removed from memory
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
    // 1. Set loading state to true immediately
    isLoading.value = true; // Correct way to update RxBool

    try {
      // 2. Call the repository's login method
      // The repository should return a success status or parsed data,
      // and handle its own errors by throwing an exception or returning a specific type.
      // We will define the loginUser in AuthRepositryApi to return a bool for simplicity
      // or the LoginModel object directly.
      await _authRepo.loginUser(
        username: username,
        password: password, onSuccess: () {  Get.snackbar("Success", "Login Success");
 Get.toNamed(RoutesName.Home_Content);
 }, onError: (e) {  
 Get.snackbar("Success", "Login Success");
Get.toNamed(RoutesName.Home_Content);


 },
      );

      // If the above line completes without throwing an error, login was successful.
      Get.snackbar(
        "Success",
        "Login Successful!",
        colorText: Colors.white,
     backgroundColor: Color(0xff3c3c3c),
        snackPosition: SnackPosition.TOP,
      );
      // Navigate to the home page after successful login
      // Use offAllNamed to clear the navigation stack, so the user can't go back to login screen.
      Get.offAllNamed(RoutesName.Home_Content);

    } catch (e) {
      // Catch any errors thrown by the repository (e.g., network error, API error)
      String errorMessage = "An unexpected error occurred.";
      if (e is String) {
        errorMessage = e; // If the error thrown is a simple string message
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
      print("Login Error: $e"); // Print the error to console for debugging
    } finally {
      // 3. Set loading state to false in a finally block, ensuring it runs regardless of success or failure
      isLoading.value = false; // Correct way to update RxBool
    }
  }
}