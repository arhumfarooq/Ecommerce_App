// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white, // optional
//       body: SizedBox.expand(
//         child: Container(
//           child: Image.asset(
//             "assets/logo2.png",
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // 👇 Background Image
//           SizedBox.expand(
//             child: Image.asset(
//               "assets/logo2.png",
//               fit: BoxFit.cover,
//             ),
//           ),

//           // 👇 Overlay with brand name in center
//           Container(
//             color: Colors.black.withOpacity(0.3), // Optional dark overlay
//             child: Center(
//               child: Text(
//                 "Shoppiko",
//                 style: GoogleFonts.poppins(
//                   fontSize: 36,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   letterSpacing: 2,
//                   shadows: [
//                     Shadow(
//                       color: Colors.black.withOpacity(0.6),
//                       offset: Offset(2, 2),
//                       blurRadius: 6,
//                     )
//                   ],
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
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/views/screens/home_screen.dart';
import 'package:practice_apis/views/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const LoginScreen();
     }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 🔹 Background full image
          SizedBox.expand(
            child: Image.asset(
              "assets/logo2.png",
              fit: BoxFit.cover,
            ),
          ),

          // 🔹 Optional dark overlay
          Container(
            color: Colors.black.withOpacity(0.3),
          ),

          // 🔹 Brand name + loader under center using Align
          Positioned(
            top: 750,
            left: 110,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Shoppiko",
                  style: GoogleFonts.poppins(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        color: Colors.black.withOpacity(0.6),
                        offset: const Offset(2, 2),
                        blurRadius: 6,
                      )
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                const SpinKitCircle(
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
