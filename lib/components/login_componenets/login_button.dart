import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginButton extends StatelessWidget {
  final String text;
  const LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return   Padding(
  padding: const EdgeInsets.symmetric(horizontal: 22),
  child: Container(
                    width: double.infinity,
                    height: 50,
                   
                    decoration: BoxDecoration(
                       color: Color(0xff1A1A1A ) ,
                      borderRadius: BorderRadius.circular(20),
                      
                    ),

                    child: Center(
                      child: Text(text,style: GoogleFonts.poppins(
                        color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18
                      ),),
                    ),
                  ),
);
  }
}