import 'package:flutter/material.dart';

class DetailedImagecontainer extends StatelessWidget {
  final String image;
  const DetailedImagecontainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
          margin: EdgeInsets.symmetric(vertical: 20),
        height: screenHeight/2.5,
        width: screenWidth,
        decoration: BoxDecoration(
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          offset: Offset(0, 3),
          blurRadius: 7,
        
        )
        
          ],
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover)
        ),
          );
  }
}