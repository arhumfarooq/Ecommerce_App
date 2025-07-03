import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:practice_apis/components/login_componenets/login_button.dart';
import 'package:practice_apis/components/login_componenets/login_screen_components.dart';

class VerifyOtp extends StatelessWidget {
  const VerifyOtp({super.key});

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
                    Text("Verification Code",style: GoogleFonts.poppins(
                      color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 10,),
                    Text("You need to enter 4-digit code we send to \n                            your Email.",style: GoogleFonts.poppins(
                      color: Colors.grey,
                    ),),
                SizedBox(height: 20,),
//                  PinCodeTextField(appContext: context,
//                  pastedTextStyle: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     )
                 
//                  , length: 4,
//                  pinTheme: PinTheme(
// shape: PinCodeFieldShape.box,
// borderRadius: BorderRadius.circular(20),
// activeFillColor: Color(0xff1A1A1A),
// selectedColor: Color(0xff1A1A1A) ,
// inactiveColor: Color(0xff1A1A1A),
// fieldHeight: 60,
// fieldWidth: 60,
// activeColor: Colors.white                 ),
//  cursorColor: Colors.grey,
//                     animationDuration: const Duration(milliseconds: 300),
//                     enableActiveFill: true,
                 
//                     keyboardType: TextInputType.number,
//                     boxShadows: const [
//                       BoxShadow(
//                         offset: Offset(0, 1),
//                         color: Colors.black12,
//                         blurRadius: 10,
//                       )
//                     ],
                 
//                  )

                 
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20),
         child: PinCodeTextField(
          
           appContext: context,
           pastedTextStyle: const TextStyle( // Added 'const'
             color: Colors.white,
             fontWeight: FontWeight.bold,
           ),
           length: 4,
           textStyle: GoogleFonts.poppins(
             color: Colors.grey
           ),
           pinTheme: PinTheme(
             
             shape: PinCodeFieldShape.box,
             borderRadius: BorderRadius.circular(20),
             
             activeFillColor: const Color(0xff1A1A1A), // Background fill for active field (dark grey/off-black)
           selectedColor: Color(0xff1A1A1A), // Border color when selected/focused (now grey)
             inactiveColor: const Color(0xff1A1A1A), // Border color for inactive fields (dark grey/off-black)
             inactiveFillColor: Color(0xff1A1A1A),
             selectedFillColor: Color(0xff1A1A1A),
             disabledColor: Color(0xff1A1A1A),
             fieldHeight: 60,
             fieldWidth: 60,
             activeColor: Colors.grey, // Border color when active/focused (CHANGED FROM Colors.white to Colors.grey)
             // Add `selectedFillColor` if you want a specific background color when selected but not active
             // selectedFillColor: Color(0xff1A1A1A), // Keep same as activeFillColor for consistent background
             // inactiveFillColor: Color(0xff1A1A1A), // Background fill for inactive fields
           ),
           cursorColor: Colors.grey, // Cursor color
           animationDuration: const Duration(milliseconds: 300),
           enableActiveFill: true, // Crucial for activeFillColor to work
           keyboardType: TextInputType.number,
           boxShadows: const [
             BoxShadow(
            
               color: Colors.grey,
               blurRadius: 10,
             )
           ],
           onChanged: (value) {
             // This is where you would typically handle the input value
             // print(value);
           },
           // If you need a controller:
           // controller: yourTextEditingController,
           // onCompleted: (value) {
           //   // Callback when all fields are filled
           //   print("Completed: $value");
           // },
         ),
       )          
                 ,
                   SizedBox(height: 20,),
               
                   SizedBox(height: 62,)
,                     LoginButton(text: "Continue"),
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