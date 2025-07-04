import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_addtocart.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_bottomcontainer.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_imagecontainer.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_quantitty.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailes_component.dart';
import 'package:practice_apis/models/card_model.dart';
import 'package:practice_apis/widgets/app_icon.dart';
import 'package:practice_apis/widgets/text.dart';

class DetailedScreen extends StatelessWidget {
final String newimage,newTitle,newCategory,newOverview,newPrice,newAvailability;
final CartItem1 newCartItem1;
  DetailedScreen({super.key, required this.newimage, required this.newTitle, required this.newCategory, required this.newOverview, required this.newPrice, required this.newAvailability, required this.newCartItem1});

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
      left: 20,
            top: 45, // Adjusted top for better spacing from status bar
            right: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

           AppIcon(icon: Icons.arrow_back,iconColor: Color(0XFF242424),backgroundColor: Colors.white,),
                AppIcon(icon: Icons.shopping_cart_outlined,iconColor: Color(0XFF242424),backgroundColor: Colors.white,),
      ],
    )),
Positioned(
  bottom: 0,
  child:DetailesComponent(title: newTitle, category: newCategory, overview: newOverview)
),
Positioned(
  bottom: 0,
  child: DetailedBottomcontainer(item: newCartItem1,)),
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