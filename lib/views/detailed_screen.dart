import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_addtocart.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_bottomcontainer.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_imagecontainer.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_quantitty.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailes_component.dart';
import 'package:practice_apis/widgets/text.dart';

class DetailedScreen extends StatelessWidget {
final String newimage,newTitle,newCategory,newOverview,newPrice,newAvailability;
  DetailedScreen({super.key, required this.newimage, required this.newTitle, required this.newCategory, required this.newOverview, required this.newPrice, required this.newAvailability});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
body: Stack(
  children: [
    Column(
      children: [
    DetailedImagecontainer(image: newimage)
      ],
    ),
Positioned(
  bottom: 0,
  child:DetailesComponent(title: newTitle, category: newCategory, overview: newOverview)
),
Positioned(
  bottom: 0,
  child: DetailedBottomcontainer()),
  Positioned(
   top: 730,
    child:      
        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [      
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextWidget(
                text: "Price : \$$newPrice"),
            ), 
      ],
    )),
    Positioned( 
      top: 750,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Text("$newAvailability",style: GoogleFonts.poppins(
        color: Colors.blue
        ,fontSize: 18
        ),),
      ))
  ],
)
    );
  }
}