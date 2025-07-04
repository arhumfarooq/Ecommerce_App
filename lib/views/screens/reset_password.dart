import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/login_componenets/login_button.dart';
import 'package:practice_apis/components/login_componenets/login_screen_components.dart';
import 'package:practice_apis/utils/routes_name.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                    Text("Reset your password",style: GoogleFonts.poppins(
                      color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 10,),
                    Text("We need your Email so we can send you \n             the password reset code.",style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),),
                SizedBox(height: 20,),
                   LoginScreenComponents(text: "Email",),
                   SizedBox(height: 20,),
               
                   SizedBox(height: 62,)
,                     GestureDetector(
  onTap: () {
    Get.toNamed(RoutesName.verifyotp);
  },
  child: LoginButton(text: "Continue")),
SizedBox(height: 70,),

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