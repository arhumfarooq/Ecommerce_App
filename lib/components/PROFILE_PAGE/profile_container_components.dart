import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileContainerComponents extends StatelessWidget {
  final String text;
  final IconData icons;
  const ProfileContainerComponents({super.key, required this.text, this.icons = Icons.edit});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    height: 49,
                    width: 335,
                               
                    decoration: BoxDecoration(
                       color: Color(0XFF242424),
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(text,style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,color: Colors.white,
                          ),),
                          IconButton(onPressed: (){}, icon: Icon(icons, color: Colors.white, size: 18,))
                        ],
                      ),
                    ),
                  );
  }
}