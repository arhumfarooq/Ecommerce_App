// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:practice_apis/view_model/products_view_model.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
// ProductsViewModel productsViewModel = ProductsViewModel();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

// body: SizedBox(
//   width: double.infinity,
//   height: 60,
// child: FutureBuilder(
//   future: productsViewModel.fetchallroducts(),
//   builder: (BuildContext context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return Center(child: CircularProgressIndicator());
//     } else if (snapshot.hasData) {
//       return ListView.builder(
//         itemCount: snapshot.data!.products!.length,
//         itemBuilder: (context, index) {
//           return SizedBox(
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: CachedNetworkImage(
//                 imageUrl: snapshot.data!.products![index].images![0] ?? "",
//                 fit: BoxFit.cover,
//               ),
//             ),
//           );
//         },
//       );
//     } else if (snapshot.hasError) {
//       return Center(child: Text('Error: ${snapshot.error}'));
//     } else {
//       return Center(child: Text('No data found.'));
//     }
//   },
// )),

//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/homescreen_components/HS_container.dart';
import 'package:practice_apis/models/card_model.dart';

import 'package:practice_apis/view_model/products_view_model.dart';
import 'package:practice_apis/views/screens/cart.dart';
import 'package:practice_apis/views/screens/explore.dart';
import 'package:practice_apis/views/screens/profile.dart';


class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key, });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  ProductsViewModel productsViewModel = ProductsViewModel();

 
     int selectedIndex = 0;

  // late List<Widget> screens;

  // @override
  // void initState() {
  //   super.initState();
  //   screens = [
  //     HomeScreen(cartItems: widget.cartItems),
  //     Explore(cartItems:  widget.cartItems,),
  //     Mycart(cardProduct: widget.cartItems),
  //     Profile(),
  //   ];
  // }

  // void onTabChange(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  // Removed screenHeight and screenWidth initializers from here.



  @override
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        centerTitle: true,
        title: Text("Welcome to Shoppiko",style: GoogleFonts.poppins(
        color: Color(0XFF242424),
        shadows: [
                    Shadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
      ),),backgroundColor: Colors.white,),
      body: SafeArea(child: HsContainer()),
   
    );
    
  }
}
