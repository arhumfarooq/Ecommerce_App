import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreAddcart extends StatelessWidget {
  const ExploreAddcart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(height: 25,
                width: 90,
                
                decoration: BoxDecoration(
                  color: Color(0xff3c3c3c),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("Add to card",style: GoogleFonts.poppins(color: Colors.white
                  ,fontSize: 13
                  ),),
                ),
                );
  }
}