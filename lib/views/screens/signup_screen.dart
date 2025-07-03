// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/login_componenets/login_button.dart';
// import 'package:practice_apis/components/login_componenets/login_screen_components.dart';

// class SignupScreen extends StatelessWidget {
//   const SignupScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:  Stack(
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
//             child: Expanded(
//               child: Container(
//                 height: 600,
                
//                 decoration: BoxDecoration(
//                                 color: Color(0xff080808),
              
//               borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
//                 ),
//                 child: SingleChildScrollView(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: Column(
//                       children: [
//                         SizedBox(height: 30),
//                         Text("Get Started",style: GoogleFonts.poppins(
//                           color: Colors.white,fontSize: 25,fontWeight: FontWeight.w600
//                         ),),
//                         SizedBox(height: 10,),
//                         Text("Enter your details ",style: GoogleFonts.poppins(
//                           color: Colors.grey,
//                         ),),
//                          SizedBox(height: 20,),
//                        LoginScreenComponents(text: "Full Name"),
//                     SizedBox(height: 20,),
//                        LoginScreenComponents(text: "Email"),
//                        SizedBox(height: 20,),
//                        LoginScreenComponents(text: "Password"),
//                        SizedBox(height: 30,),
//                        Padding(
//                          padding: const EdgeInsets.symmetric(horizontal: 49),
//                          child: Row(
                                             
//                           children: [
//                                          Container(
//                                            width: 130,
//                                            height: 56,
//                                            child: Image.asset("assets/googlebutton.png")),
//                                            SizedBox(width: 27,),
//                                        Container(
//                                           width: 130,
//                                            height: 56,
//                                          child: Image.asset("assets/apple.png")),
                                   
//                           ],
//                          ),
//                        ),
//                        SizedBox(height: 40,)
//                     ,                     LoginButton(text: "Signup"),
//                     SizedBox(height: 40,),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 100),
//                       child: Row(
                        
//                         children: [
//                           Text("Already have an account?",style: TextStyle(color: Colors.grey),),
//                           Text("Login",style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w400),),
//                         ],
//                       ),
//                     ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/login_componenets/login_button.dart';
// import 'package:practice_apis/components/login_componenets/login_screen_components.dart';

// class SignupScreen extends StatelessWidget {
//   const SignupScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Get the total screen height
//     final double screenHeight = MediaQuery.of(context).size.height;
//     // Define the height of the top image
//     const double imageHeight = 400; // Your fixed image height
//     // Define the top offset for the positioned container (your original 380)
//     const double positionedTopOffset = 380;

//     // Calculate the height for the positioned content container
//     // This makes it take up the remaining space below the image,
//     // accounting for the slight overlap (400 - 380 = 20 pixels overlap)
//     final double contentContainerHeight = screenHeight - positionedTopOffset;


//     return Scaffold(
//       body: Stack(
//         children: [
//           // 🔹 Fixed height for image (TOP PART - NOT SCROLLABLE)
//           // This Column is largely redundant here if it only contains the SizedBox,
//           // but keeping it as per your original structure.
//           Column(
//             children: [
//               SizedBox(
//                 height: imageHeight, // Using the defined constant
//                 width: double.infinity,
//                 child: Image.asset(
//                   "assets/logo2.png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ],
//           ),

//           // 🔹 Positioned container for the scrollable content
//           Positioned(
//             top: positionedTopOffset, // Exactly where your content starts relative to the top
//             left: 0,
//             right: 0,
//             // We set the height dynamically to fill the remaining screen space.
//             // This is crucial for the SingleChildScrollView to work correctly inside it.
//             height: contentContainerHeight, // Calculated height
//             child: Container(
//               // The Container itself no longer needs a fixed height like 600,
//               // as its height is now determined by the Positioned widget.
//               decoration: const BoxDecoration(
//                 color: Color(0xff080808), // Your specified background color
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               child: SingleChildScrollView( // This makes ONLY this content scrollable
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     children: [
//                       const SizedBox(height: 30),
//                       Text(
//                         "Get Started",
//                         style: GoogleFonts.poppins(
//                           color: Colors.white,
//                           fontSize: 25,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(
//                         "Enter your details ",
//                         style: GoogleFonts.poppins(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(height: 20),
//                       const LoginScreenComponents(text: "Full Name"),
//                       const SizedBox(height: 20),
//                       const LoginScreenComponents(text: "Email"),
//                       const SizedBox(height: 20),
//                       const LoginScreenComponents(text: "Password"),
//                       const SizedBox(height: 30),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 49),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center, // Center the buttons
//                           children: [
//                             Container(
//                               width: 130,
//                               height: 56,
//                               child: Image.asset("assets/googlebutton.png"),
//                             ),
//                             const SizedBox(width: 27),
//                             Container(
//                               width: 130,
//                               height: 56,
//                               child: Image.asset("assets/apple.png"),
//                             ),
//                           ],
//                         ),
//                       ),
//                       const SizedBox(height: 40),
//                       const LoginButton(text: "Signup"),
//                       const SizedBox(height: 40),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 100), // Consider adjusting this padding or using MainAxisAlignment for flexibility
//                         child: Row(
//                           // mainAxisAlignment: MainAxisAlignment.center, // Can center this row too
//                           children: [
//                             const Text(
//                               "Already have an account?",
//                               style: TextStyle(color: Colors.grey),
//                             ),
//                             Text(
//                               "Login",
//                               style: GoogleFonts.poppins(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       // Add some bottom padding to ensure content isn't cut off by the keyboard
//                       const SizedBox(height: 20),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/login_componenets/login_button.dart';
import 'package:practice_apis/components/login_componenets/login_screen_components.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    const double imageHeight = 400;
    const double positionedTopOffset = 380;
    final double contentContainerHeight = screenHeight - positionedTopOffset;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: imageHeight,
                width: double.infinity,
                child: Image.asset(
                  "assets/logo2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Positioned(
            top: positionedTopOffset,
            left: 0,
            right: 0,
            height: contentContainerHeight,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xff080808),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Enter your details ",
                        style: GoogleFonts.poppins(
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const LoginScreenComponents(text: "Full Name"),
                      const SizedBox(height: 20),
                      const LoginScreenComponents(text: "Email"),
                      const SizedBox(height: 20),
                      const LoginScreenComponents(text: "Password"),
                      const SizedBox(height: 30), // Increased space a bit

                      // --- NEW WIDGETS ADDED HERE ---
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25), // Adjust horizontal padding as needed
                        child: Row(
                          children: [
                            const Expanded(
                              child: Divider(
                                color: Colors.grey, // Color of the divider line
                                thickness: 1, // Thickness of the divider line
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Or continue with",
                                style: GoogleFonts.poppins(
                                  color: Colors.grey, // Text color
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20), // Space after the "Or continue with" section
                      // --- END NEW WIDGETS ---

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 49),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 130,
                              height: 56,
                              child: Image.asset("assets/googlebutton.png"),
                            ),
                            const SizedBox(width: 27),
                            Container(
                              width: 130,
                              height: 56,
                              child: Image.asset("assets/apple.png"),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      const LoginButton(text: "Signup"),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}