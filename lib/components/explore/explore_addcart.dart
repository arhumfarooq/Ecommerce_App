import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/cart_controller.dart';
import 'package:practice_apis/models/card_model.dart';

class ExploreAddcart extends StatelessWidget {
final String text;
final CartItem1 item1;
  ExploreAddcart({super.key, required this.text, required this.item1});
final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        cartController.addItem(item1);
      },
      child: Container(height: 25,
                  width: 90,
                  
                  decoration: BoxDecoration(
                    color: Color(0xff3c3c3c),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(text,style: GoogleFonts.poppins(color: Colors.white
                    ,fontSize: 13
                    ),),
                  ),
                  ),
    );
  }
}

