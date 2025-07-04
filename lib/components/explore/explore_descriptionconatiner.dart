import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/explore/explore_addcart.dart';
import 'package:practice_apis/models/all_products.dart';
import 'package:practice_apis/models/card_model.dart';

class ExploreDescriptionconatiner extends StatelessWidget {
 final Product items;
  const ExploreDescriptionconatiner({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return   Container(
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                //color: Colors.black,
                              
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey)
                      ),
                      height: 120,
                      width: 120,
                      child: Image.network(items.images.first ?? '')),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Container(
                    height: 100,
                    width: 248.9,
                    
                   decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                  color: Colors.white,
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
                     padding: const EdgeInsets.symmetric(horizontal: 8),
                     child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(items.title?? "",
                        overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(
                          color: Color(0xff5c524f),fontSize: 15,fontWeight: FontWeight.w700
                        ),
                            
                            ),
                            Row(
                              children: [
                                Text("Category :",style: GoogleFonts.roboto(
                                  fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff5c524f)
                                ),),
                                Text(items.category??'',style: GoogleFonts.poppins(
                                  color: Color(0xff5c524f),fontSize: 10
                                ),),
                                SizedBox(width: 21,),
              
                
                              ],
                            ),
                     
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              Row(
                                children: [
                                      Text("Price :",style: GoogleFonts.roboto(
                                  fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff5c524f)
                                ),),
                               Text("\$"+"${items.price.toString()}",style: GoogleFonts.poppins(
                                fontSize: 10,color: Color(0xff5c524f)
                               ),),
                                ],
                              )
                           ,
                                ExploreAddcart(text: 'Add to card', item1: CartItem1( productId: items.id.toString(), productName: items.title, image:items.images.first,
                                 productPrice: items.price.toString(),  ),)
                             ],)
                      ],
                     ),
                   ),
                  ),
                )
                
                  ],
                ),
                );
  }
}