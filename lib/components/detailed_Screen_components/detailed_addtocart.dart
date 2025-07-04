import 'package:flutter/material.dart';
import 'package:practice_apis/models/card_model.dart';
import 'package:practice_apis/views/screens/cart.dart';

class DetailedAddtocart extends StatelessWidget {
  final CartItem1 item1;
  const DetailedAddtocart({super.key, required this.item1});

  @override
  Widget build(BuildContext context) {



    return     InkWell(
      onTap: () {
      Mycart(cardProduct: item1,);

      },
      child: Container(
            width: 180,
             padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
             child: Text("Add to cart", style: TextStyle(color: Colors.white)),
             decoration: BoxDecoration(
               color: Color(0xff3c3c3c),
               borderRadius: BorderRadius.circular(20),
             ),
           ),
    );
  }
}