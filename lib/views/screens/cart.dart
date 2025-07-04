// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/Mycart/quantity.dart';
// import 'package:practice_apis/components/explore/explore_addcart.dart';
// import 'package:practice_apis/models/card_model.dart';
// import 'package:practice_apis/widgets/app_icon.dart';
// import 'package:practice_apis/widgets/data/global_list.dart';

// class Mycart extends StatefulWidget {
//   const Mycart({super.key});

//   @override
//   State<Mycart> createState() => _MycartState();
// }

// class _MycartState extends State<Mycart> {
// @override
// void initState() {
//   super.initState();
  
// }

// final CartItem1 cartItems;

// int calculateTotalQuantity(){
//   int totalquantity =0;
// for (int i = 0; i < cardProducts.length; i++) {
//   totalquantity += cardProducts[i].quantity;
// }
// return totalquantity;
// }

//  double calculateTotalPrice(){
// double total= 0.0;
// for(int i =0 ; i<cardProducts.length;i++){
// total = total + (cardProducts[i].price * cardProducts[i].quantity);

// }
// return total;
//  }


//   @override
//   Widget build(BuildContext context) {



//     return Scaffold(

// //       appBar: AppBar(
// // leading:  AppIcon(icon: Icons.arrow_back,iconColor: Color(0XFF242424),backgroundColor: Colors.white,),
        
// //       ),
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//         Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
        
//          AppIcon(icon: Icons.arrow_back,iconColor: Color(0XFF242424),backgroundColor: Colors.white,),
//          Text("My Cart",style: GoogleFonts.poppins(
//         fontSize: 24,
//         fontWeight: FontWeight.w500
        
//          ),),
//               AppIcon(icon: Icons.shopping_cart_outlined,iconColor: Color(0XFF242424),backgroundColor: Colors.white,),
//           ],
//         ),
        
//      ListView.builder(
//       itemCount: cardProducts.length,
//       itemBuilder: (context,index){
//         final item = cardProducts[index];
// return     Row(
//            children: [
//              Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               border: Border.all(color: Colors.grey),
//                               image: DecorationImage(image: NetworkImage(item.proImage))
//                             ),
//                             height: 100,
//                             width: 100,
                       
//                             ),
//                             SizedBox(height: 10,),
//                       Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
//                         color: Colors.white,
//                                boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 1,
//                                       blurRadius: 5,
//                                       offset: const Offset(0, 3),
//                                     ),
//                                   ],
//                             ),
//                             height: 80,
//                             width: 248.9,
// child: Padding(
//   padding: const EdgeInsets.symmetric(horizontal: 10),
//   child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(item.name,
//                            overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(
//                              color: Color(0xff5c524f),fontSize: 15,fontWeight: FontWeight.w700
//                            ),),
//                            Row(
//                             children: [
//                                 Row(
//                                   children: [
//                                         Text("Price :",style: GoogleFonts.roboto(
//                                     fontSize: 13,fontWeight: FontWeight.w600,color: Color(0xff5c524f)
//                                   ),),
//                                  Text("${item.price}x${item.quantity}",style: GoogleFonts.poppins(
//                                   fontSize: 10,color: Color(0xff5c524f)
//                                  ),),
                               
//                                   ],
//                                 )
//                             ],
//                            ),
//                            SizedBox(height: 5,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Quantity(),
//                             InkWell(
//                               onTap: () {
//                                 setState(() {
// cardProducts.removeAt(  index);

//                                 });
//                               },
//                               child: ExploreAddcart(text: "Remove"))
//                           ],
//                         )
  
  
//     ],
//   ),
// ),

//                             ),       
//            ],
// );


//      })


//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/Mycart/quantity.dart';
import 'package:practice_apis/components/explore/explore_addcart.dart';
import 'package:practice_apis/models/card_model.dart';
import 'package:practice_apis/widgets/app_icon.dart';
import 'package:practice_apis/widgets/data/global_list.dart';

class Mycart extends StatelessWidget {
  final CartItem1 cardProduct;
  const Mycart({super.key, required this.cardProduct});

  // Dummy placeholder: Replace with actual reactive list or controller access
  // Note: 'quantity' and 'price' must be cast/converted if dynamic
  int calculateTotalQuantity() {
    int totalquantity = 0;
    for (int i = 0; i < cardProducts.length; i++) {
      totalquantity += cardProducts[i].quantity;
    }
    return totalquantity;
  }

  double calculateTotalPrice() {
    double total = 0.0;
    for (int i = 0; i < cardProducts.length; i++) {
       total += (cardProducts[i].productPrice! * cardProducts[i].quantity) as double;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back,
                  iconColor: Color(0XFF242424),
                  backgroundColor: Colors.white,
                ),
                Text(
                  "My Cart",
                  style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  iconColor: Color(0XFF242424),
                  backgroundColor: Colors.white,
                ),
              ],
            ),
            const SizedBox(height: 10),

            /// 🟡 You must wrap this in `Expanded` or `Flexible` for it to scroll
            Expanded(
              child: ListView.builder(
                itemCount: cardProducts.length,
                itemBuilder: (context, index) {
                  final item = cardProducts[index];
                  return Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey),
                          image: DecorationImage(
                            image: NetworkImage(item.image ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 100,
                        width: 248.9,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.productName ?? '',
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  color: Color(0xff5c524f),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price : ",
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff5c524f),
                                    ),
                                  ),
                                  Text(
                                    "${item.productPrice ?? ''} x ${item.quantity ?? ''}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      color: Color(0xff5c524f),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Quantity(), // NOTE: Make Quantity reactive in your own logic
                                  InkWell(
                                    onTap: () {
                                      cardProducts.removeAt(index);
                                    },
                                    child: ExploreAddcart(text: "Remove", item1: item),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
