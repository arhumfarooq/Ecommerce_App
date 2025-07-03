// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:practice_apis/components/resuable_container.dart';
// import 'package:practice_apis/models/cateogires_model.dart';
// import 'package:practice_apis/view_model/products_view_model.dart';

// class HsContainer extends StatelessWidget {
  
//   const HsContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//   final screenHeight = MediaQuery.of(context).size.height;
//     final screenWidth = MediaQuery.of(context).size.width;
//   ProductsViewModel productsViewModel = ProductsViewModel();


//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//        Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Expanded(
//                                   child: Text(
                                    
//                                     "Products",style: GoogleFonts.poppins(
                                  
//                                         fontSize: 20,fontWeight: FontWeight.w600,
//                                                         color: Color(0xff5c524f)
//                                                       ),),
//                                 ),
//                               ),
//              Text(
//                "See All",
//                style: GoogleFonts.poppins(fontSize: 10, color: Colors.grey),
//              ),
//             ],
//           ),
//           SizedBox(height: 4,),
//           Expanded(
//             child: FutureBuilder(
//                 future: productsViewModel.getallcategoryproducts("tablets"),
//                 builder: (BuildContext context, snapshot) {
//                   if (snapshot.connectionState == ConnectionState.waiting) {
//                     return Center(child: CircularProgressIndicator());
//                   } else if (snapshot.hasData) {
//                     return ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: snapshot.data!.products!.length,
//                       itemBuilder: (context, index) {
//                         final product = snapshot.data!.products![index];
//                         return Stack(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
//                                 height: screenHeight * 0.35,
//                                             width: screenWidth*0.9,
//                               decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 // border: Border.all(
//                                 //   color: Colors.black
//                                 // ),
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.grey.withOpacity(0.5),
//                                     spreadRadius: 1,
//                                     blurRadius: 5,
//                                     offset: Offset(0, 3), // changes position of shadow
//                                   ),
//                                 ]
//                               ),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(20),
                                
//                                 child: Padding(
//                                   padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
//                                   child: CachedNetworkImage(
                                    
//                                     imageUrl: product.images![0] ?? "",
                                  
//                                     fit: BoxFit.cover,
//                                     placeholder: (context, url) => 
//                                       Center(child: CircularProgressIndicator()),
//                                     errorWidget: (context, url, error) => 
//                                       Icon(Icons.error),
//                                   ),
//                                 ),
//                               ),
                              
//                             ),
//                             SizedBox(height: 4,),
//                             Positioned(
//                               top: 330,
//                           left:0 ,
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 10,bottom: 30),
//                                   child:  Text(snapshot.data!.products![index].title ?? '',style: GoogleFonts.poppins(
//                                       fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff5c524f)
                                  
//                                                             ),
//                                   ),
//                                 ),
//                             ),

                          
//                           ],
//                         );
//                       },
//                     );
//                   } else if (snapshot.hasError) {
//                     return Center(child: Text('Error: ${snapshot.error}'));
//                   } else {
//                     return Center(child: Text('No data found.'));
//                   }
//                 },
//               ),
//           ),
//          Padding(
//                                 padding: const EdgeInsets.symmetric(horizontal: 10),
//                                 child: Text(
                                  
//                                   "Perfumes",style: GoogleFonts.poppins(
                                
//                                       fontSize: 20,fontWeight: FontWeight.w600,
//                                                       color: Color(0xff5c524f)
//                                                     ),),
//                               ),
//       Expanded(
//         child: ResuableContainer(Category: "tablets",)
//       ),
//       SizedBox(height: 5,),
//       Expanded(child: ResuableContainer(Category: "laptops",))
//         ],
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/homescreen_components/resuable_container.dart';
import 'package:practice_apis/view_model/products_view_model.dart';

class HsContainer extends StatelessWidget {
  const HsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    ProductsViewModel productsViewModel = ProductsViewModel();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Products heading
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Products",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff5c524f),
                  ),
                ),
                Text(
                  "See All",
                  style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 10),

            // Horizontal Product List
            SizedBox(
              height: screenHeight * 0.4,
              child: FutureBuilder(
                future: productsViewModel.getallcategoryproducts("tablets"),
                builder: (BuildContext context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: SpinKitCircle(
                      color: Colors.black,size: 50,
                    ));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.products!.length,
                      itemBuilder: (context, index) {
                        final product = snapshot.data!.products![index];
                        return Stack(
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
                              height: screenHeight * 0.35,
                              width: screenWidth * 0.8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                               // borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  imageUrl: product.images![0] ?? "",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) =>
                                      Center(child: SpinKitCircle(
                                        color: Colors.grey,
                                        size: 50,
                                      )),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                            ),

                            // Product title below image
                            Positioned(
                              bottom: 10,
                              left: 16,
                              child: Text(
                                product.title ?? '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff5c524f),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else {
                    return const Center(child: Text('No data found.'));
                  }
                },
              ),
            ),

            const SizedBox(height: 20),

            // Perfumes Section
            Text(
              "Perfumes",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff5c524f),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: screenHeight * 0.3,
              child: const ResuableContainer(Category: "fragrances"),
            ),

            const SizedBox(height: 20),

            // Laptops Section
            Text(
              "Laptops",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff5c524f),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: screenHeight * 0.3,
              child: const ResuableContainer(Category: "laptops"),
            ),
          ],
        ),
      ),
    );
  }
}
