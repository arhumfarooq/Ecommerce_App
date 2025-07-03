import 'package:flutter/material.dart';
import 'package:practice_apis/widgets/text.dart';

class DetailedQuantitty extends StatelessWidget {
  const DetailedQuantitty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color: Colors.white,
           ),
           child: Row(
             children: [
               Icon(Icons.remove, color: Colors.grey),
               const SizedBox(width: 5),
               TextWidget(text: "0"),
               const SizedBox(width: 5),
               Icon(Icons.add, color: Colors.grey),
             ],
           ),
         );
  }
}