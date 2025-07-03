import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreenComponents extends StatelessWidget {
  final String text;
  final controller ;
  const LoginScreenComponents({super.key, required this.text, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff636363).withOpacity(0.15),
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          controller:controller ,
          style: GoogleFonts.poppins(
            color: Colors.grey, // Text color when user types
          ),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            
            border: InputBorder.none,
            hintText: text,
            hintStyle: GoogleFonts.poppins(
              color: Colors.grey, // Hint text color
            ),
            contentPadding: EdgeInsets.zero,
          ),
          keyboardType: TextInputType.emailAddress,
        ),
      ),
    );
  }
}