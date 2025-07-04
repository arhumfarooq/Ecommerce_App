// import 'package:email_validator/email_validator.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/login_componenets/login_button.dart';
// import 'package:practice_apis/components/login_componenets/login_screen_components.dart';
// import 'package:practice_apis/controller/login_controller.dart';
// import 'package:practice_apis/services/Authcontroller.dart';
// import 'package:practice_apis/utils/routes_name.dart';

// class LoginScreen extends StatelessWidget {
//   final Authcontroller authcontroller= Get.put(Authcontroller());
// LoginScreen({super.key});

// bool _validateFields(){
// if(authcontroller.usernameController.text.isEmpty){
// Get.snackbar("Error", "Please enter username",colorText: Colors.white);
// return false;
// }
// if(authcontroller.passwordController.text.isEmpty){
// Get.snackbar("Error", "Please enter password",colorText: Colors.white);
// return false;
// }

// // if(!EmailValidator.validate(authcontroller.usernameController.text.trim())){
// // Get.snackbar("Error", "Pler a valid username",colorText: Colors.white);
// // return false;
// // }
//     if (authcontroller.passwordController.text.length < 6) {
//       Get.snackbar("Error", "Password must be at least 6 characters",
//           colorText: Colors.white);
//       return false;
//     }


// return true;
// }

//   @override
//   Widget build(BuildContext context) {




//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               // 🔹 Fixed height for image
//               SizedBox(
//                 height: 400, // Set desired height
//                 width: double.infinity,
//                 child: Container(
//                   child: Image.asset(
//                     "assets/logo2.png",
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           // 🔹 Positioned container below image
//           Positioned(
//             top: 380, // exactly below image height
//             left: 0,
//             right: 0,
//             child: Container(
//               height: 600,
              
//               decoration: BoxDecoration(
//                               color: Color(0xff080808),

// borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                   children: [
//                     SizedBox(height: 30),
//                     Text("Welcome Back",style: GoogleFonts.poppins(
//                       color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
//                     ),),
//                     SizedBox(height: 10,),
//                     Text("Enter your details below",style: GoogleFonts.poppins(
//                       color: Colors.grey,
//                     ),),
//                 SizedBox(height: 20,),
//                    LoginScreenComponents(text: "Username",controller: authcontroller.usernameController,),
//                    SizedBox(height: 20,),
//                    LoginScreenComponents(text: "Password",controller: authcontroller.passwordController,),
//                    SizedBox(height: 10,),
//                    Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                 Text(""),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 21),
//                   child: GestureDetector(
//                     onTap: () {
//                       Get.toNamed(RoutesName.resetPage);
//                     },
//                     child: Text("Forgot Password?",style: TextStyle(color: Colors.grey),)),
//                 ),
             
//                     ],
//                    ),
//                    SizedBox(height: 62,)
// ,                     Padding(
// padding: const EdgeInsets.symmetric(horizontal: 22),
// child: InkWell(
//   onTap: (){
   
// if (_validateFields()) {
//   authcontroller.loginUser(username: authcontroller.usernameController.text, password: authcontroller.passwordController.text.trim());
// }

//   },
//   child: Container(
//                     width: double.infinity,
//                     height: 50,
                   
//                     decoration: BoxDecoration(
//                        color: Color(0xff1A1A1A ) ,
//                       borderRadius: BorderRadius.circular(20),
                      
//                     ),
  
//                     child: Center(
//                       child: Text("Login",style: GoogleFonts.poppins(
//                         color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18
//                       ),),
//                     ),
//                   ),
// ),
// ),
// SizedBox(height: 70,),
// Padding(
//   padding: const EdgeInsets.only(left: 100),
//   child: Row(
    
//     children: [
//       Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
//       Text("SignUp",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400),),
//     ],
//   ),
// ),
//                   ],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:email_validator/email_validator.dart'; // Keep if you uncomment email validation later
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
// import 'package:get/instance_manager.dart'; // This import is often redundant with 'package:get/get.dart'
import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/login_componenets/login_button.dart'; // If you're not using a separate LoginButton widget, this can be removed
import 'package:practice_apis/components/login_componenets/login_screen_components.dart';
// import 'package:practice_apis/controller/login_controller.dart'; // This import seems to be for a different controller, ensure correct one is used
import 'package:practice_apis/services/Authcontroller.dart'; // This is your correct Authcontroller
import 'package:practice_apis/utils/routes_name.dart';

class LoginScreen extends StatelessWidget {
  // Initialize your Authcontroller.
  // It's already registered in main.dart or via bindings, so Get.find() is generally preferred here
  // to avoid re-creating it or causing issues if it's meant to be a singleton.
  // However, Get.put() also works here if it's the *first* time it's being put.
  // For consistency and explicit dependency management, Get.find() is often better in UI classes.
  final Authcontroller authcontroller = Get.put(Authcontroller()); // Keep Get.put() if this is the entry point
                                                                  // for Authcontroller creation.
                                                                  // If it's already in initialBinding, Get.find() is safer.
                                                                  // Let's stick with Get.put() as you had it, for now.

  LoginScreen({super.key});

  bool _validateFields() {
    if (authcontroller.usernameController.text.isEmpty) {
      Get.snackbar("Error", "Please enter username", colorText: Colors.white, );
      return false;
    }
    if (authcontroller.passwordController.text.isEmpty) {
      Get.snackbar("Error", "Please enter password", colorText: Colors.white, );
      return false;
    }

    // Uncomment and use if your 'username' is actually an email and needs validation
    // if (!EmailValidator.validate(authcontroller.usernameController.text.trim())) {
    //   Get.snackbar("Error", "Please enter a valid username/email", colorText: Colors.white, backgroundColor: Colors.red);
    //   return false;
    // }

    if (authcontroller.passwordController.text.length < 6) {
      Get.snackbar(
        "Error",
        "Password must be at least 6 characters",
        colorText: Colors.white,
      
      );
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // 🔹 Fixed height for image
              SizedBox(
                height: 400, // Set desired height
                width: double.infinity,
                child: Container(
                  child: Image.asset(
                    "assets/logo2.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),

          // 🔹 Positioned container below image
          Positioned(
            top: 380, // exactly below image height
            left: 0,
            right: 0,
            child: Container(
              height: 600, // Ensure enough height for content
              decoration: const BoxDecoration( // Added const for BoxDecoration
                color: Color(0xff080808),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Enter your details below",
                      style: GoogleFonts.poppins(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                    LoginScreenComponents(
                      text: "Username",
                      controller: authcontroller.usernameController,
                    ),
                    const SizedBox(height: 20),
                    LoginScreenComponents(
                      text: "Password",
                      controller: authcontroller.passwordController,
                    //  isObscure: true, // Typically, password fields should be obscured
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(""), // This seems to be an empty text, might remove if not needed
                        Padding(
                          padding: const EdgeInsets.only(right: 21),
                          child: GestureDetector(
                            onTap: () {
                              Get.toNamed(RoutesName.resetPage);
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 62),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: InkWell(
                        onTap: () {
                          // Only attempt login if fields are valid and not currently loading
                          if (_validateFields() && !authcontroller.isLoading.value) {
                            authcontroller.loginUser(
                              username: authcontroller.usernameController.text,
                              password: authcontroller.passwordController.text.trim(),
                            );
                          }
                        },
                        // Use Obx to react to changes in authcontroller.isLoading
                        child: Obx(
                          () => Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: const Color(0xff1A1A1A),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              // Show CircularProgressIndicator when loading is true
                              child: authcontroller.isLoading.value
                                  ? SpinKitFadingCircle(
                                      color: Colors.white,
                                      size: 30,
                                      // Make it a bit thinner
                                    )
                                  : Text(
                                      "Login",
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                    Padding(
                      padding: const EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          const Text(
                            "Don't have an account?",
                            style: TextStyle(color: Colors.grey),
                          ),
                          // Make this clickable to navigate to signup page
                          GestureDetector(
                            onTap: () {
                              // Get.toNamed(RoutesName.signupPage); // Assuming you have a signup route
                              print("Navigate to Signup Page"); // Placeholder
                            },
                            child: Text(
                              "SignUp",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}