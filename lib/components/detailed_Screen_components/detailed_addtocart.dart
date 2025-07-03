import 'package:flutter/material.dart';

class DetailedAddtocart extends StatelessWidget {
  const DetailedAddtocart({super.key});

  @override
  Widget build(BuildContext context) {
    return     Container(
          width: 180,
           padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
           child: Text("Add to cart", style: TextStyle(color: Colors.white)),
           decoration: BoxDecoration(
             color: Color(0xff3c3c3c),
             borderRadius: BorderRadius.circular(20),
           ),
         );
  }
}