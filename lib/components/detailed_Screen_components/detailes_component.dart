import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/widgets/text.dart';

class DetailesComponent extends StatelessWidget {
  final String title,category,overview;
  const DetailesComponent({super.key, required this.title, required this.category, required this.overview});

  @override
  Widget build(BuildContext context) {
          final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
    height: screenHeight/1.69,
    width: screenWidth,
    
decoration: BoxDecoration(
  borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
  color: Colors.white,
         boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          offset: Offset(0, 3),
          blurRadius: 7,
        
         )]
),
child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 10,),
TextWidget(text: title),
  
  SizedBox(height: 10,),
  Row(
    children: [
TextWidget(text: "Category :"),
  
    Text(category,style: GoogleFonts.poppins(
  fontSize: 18,
  color: Color(0xff3c3c3c),
  fontWeight: FontWeight.w400
  
    ),)
    ],
  ),
SizedBox(height: 10,),
 TextWidget(text: "Overview: "),
 Text(
  
  overview,style: TextStyle(color: Colors.black),)

    ],
  ),
),
  );
  }
}