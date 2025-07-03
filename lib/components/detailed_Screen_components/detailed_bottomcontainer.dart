import 'package:flutter/material.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_addtocart.dart';
import 'package:practice_apis/components/detailed_Screen_components/detailed_quantitty.dart';

class DetailedBottomcontainer extends StatelessWidget {
  const DetailedBottomcontainer({super.key});

  @override
  Widget build(BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    height: 120,width: screenWidth,
  decoration: BoxDecoration(
    color: Color(0xff5c524f).withOpacity(0.2),
borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
  ),
  child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         DetailedQuantitty(),
      DetailedAddtocart()
       ],
     ),
  
  );
  }
}