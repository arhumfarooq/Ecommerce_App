import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/login_componenets/login_button.dart';
import 'package:practice_apis/components/login_componenets/login_screen_components.dart';
import 'package:practice_apis/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

LoginController controller = Get.put(LoginController());

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
              height: 600,
              
              decoration: BoxDecoration(
                              color: Color(0xff080808),

borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text("Welcome Back",style: GoogleFonts.poppins(
                      color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 10,),
                    Text("Enter your details below",style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),),
                SizedBox(height: 20,),
                   LoginScreenComponents(text: "Email",controller: controller.emailController.value,),
                   SizedBox(height: 20,),
                   LoginScreenComponents(text: "Password",controller: controller.passwordController.value,),
                   SizedBox(height: 10,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                Text(""),
                Padding(
                  padding: const EdgeInsets.only(right: 21),
                  child: Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
                ),
             
                    ],
                   ),
                   SizedBox(height: 62,)
,                     LoginButton(text: "Login"),
SizedBox(height: 70,),
Padding(
  padding: const EdgeInsets.only(left: 100),
  child: Row(
    
    children: [
      Text("Don't have an account?",style: TextStyle(color: Colors.grey),),
      Text("SignUp",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400),),
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
