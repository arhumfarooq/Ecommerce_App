// import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   const Profile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//  backgroundColor: Colors.white,
//       body: Stack(
//         children: [
// Column(
//   children: [
//     Container(
//       height: 400,
//       width: double.infinity,
//       child: Image.asset("assets/logo2.png",fit: BoxFit.cover,)),
//   ],
// ),
// Positioned(
// top: 300,
// bottom: 0,
// left: 0,
//   child: Container(
//     color: Colors.amberAccent,
//     width: double.infinity,
//     height: 600,
//   ),
// )
//         ],
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/PROFILE_PAGE/profile_container_components.dart';
import 'package:practice_apis/widgets/text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    // You can get the height of the screen to make it a bit more dynamic,
    // though for a fixed image height, it's not strictly necessary for this specific overlap.
    // final double screenHeight = MediaQuery.of(context).size.height;

    // Define the height of your image container
    const double imageHeight = 400.0; // This is the height you set for your image

    return Scaffold(
      backgroundColor: Colors.white, // As per your original code
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: imageHeight, // The height of your image container
                width: double.infinity,
                decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo2.png"), // Use AssetImage here
                  fit: BoxFit.cover,
                ),
                ),
             
                
              ),
              // If you had more widgets in this column below the image,
              // they would push the positioned container down.
              // // For a simple overlap, the Column around the image is fine.
              // Positioned(
              //   top: 180,
              //   left: 30,
              //   child:   Text(
              //     "Shoppiko",
              //     style: GoogleFonts.poppins(
              //       fontSize: 20,
              //       fontWeight: FontWeight.bold,
              //       color: Colors.white,
              //       letterSpacing: 1.5,
              //       shadows: [
              //         Shadow(
              //           color: Colors.black,
              //           offset: Offset(4, 4),
              //           blurRadius: 6,
              //         )
              //       ],
              //     ),
              //   ),)
            ],
          ),
          // This is the container you want to slightly overlap the image
          Positioned(
            // Adjust this 'top' value to control the overlap.
            // If image is 400px high, setting top to 350px means it starts 50px above image bottom.
            // You can change '350.0' to whatever value gives the desired overlap.
            top: 350, // This makes it overlap by 50 pixels
            // top: 350.0, // You can also use a fixed pixel value directly like you had, e.g., 300.0

            bottom: 0, // Ensures it extends to the bottom of the Stack
            left: 0,
            right: 0, // Make it span the full width
            child: Container(
              height: 600,
             // Your original color
              width: double.infinity, 
              decoration: BoxDecoration(
                 color: Colors.white, 
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              child: SingleChildScrollView(
                child: Column(
                  
                  children: [
                  SizedBox(height: 20),
                  Text("Shoppiko",style: GoogleFonts.poppins(fontSize: 26,fontWeight: FontWeight.bold,color: Color(0XFF242424),
                  shadows: [
                    Shadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                  )),
                  SizedBox(height: 20,),
                Container(
                  height: 110,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color:Color(0XFF242424) )
                  ),
                ),
                
                Text("Your name",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0XFF242424))),
                
                SizedBox(height: 20,),
                    ProfileContainerComponents(text: "Edit Profile"),
                    SizedBox(height: 20),
                             
                
                   
                    ProfileContainerComponents(text: "Change Password"),
                    SizedBox(height: 20),
                         ProfileContainerComponents(text: "Terms & Privacy Policy",icons: Icons.arrow_forward_rounded),
                    SizedBox(height: 20),
                    ProfileContainerComponents(text: "Log Out",icons: Icons.arrow_forward_rounded,),
                    SizedBox(height: 20,)
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