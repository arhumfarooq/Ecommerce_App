import 'package:flutter/material.dart';

class Quantity extends StatelessWidget {
  const Quantity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
  children: [
    Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Color(0xff3c3c3c),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Icon(Icons.remove, color: Colors.white, size: 16),
      ),
    ),
    InkWell(
      onTap: (){


      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            '1', // you can replace this with your dynamic quantity
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    ),
    Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        color: Color(0xff3c3c3c),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Center(
        child: Icon(Icons.add, color: Colors.white, size: 16),
      ),
    ),
  ],
);
  }
}