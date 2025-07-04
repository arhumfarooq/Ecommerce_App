import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/components/explore/explore_addcart.dart';
import 'package:practice_apis/components/explore/explore_descriptionconatiner.dart';
import 'package:practice_apis/view_model/products_view_model.dart';
import 'package:practice_apis/views/detailed_screen.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
ProductsViewModel productsViewModel = ProductsViewModel();
 final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white ,
body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
  
        
        CupertinoSearchTextField(
      cursorColor: Colors.grey,
      
            padding: const EdgeInsets.all(10),
                prefixIcon: Icon(Icons.search, color: const Color(0xff5c524f).withOpacity(1.0)),
                suffixIcon: Icon(Icons.clear, color:  const Color(0xff5c524f).withOpacity(1.0)),
                placeholder: 'Search more products',style: GoogleFonts.poppins(
                  color: Color(0xff5c524f)
                ),
        ),
        Text(
                "All Products",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff5c524f),
                ),
              ),
      
            SizedBox(
                            height: screenHeight ,
              child: FutureBuilder(
                
                future: productsViewModel.fetchallroducts(),
                
                 builder: (BuildContext context , snapshot){
                       if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: SpinKitFadingCircle(
                      color: Colors.black,size: 50,
                    ));
                  } 
              final products= snapshot.data!.products!;
              return ListView.builder(
              
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: snapshot.data!.products!.length,
                itemBuilder: (context,index){
                  final product= products[index];

              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>DetailedScreen(newimage:product.images[0] , newTitle: product.title,
                  
                   newCategory: product.category, newOverview:product.description ,
                    newPrice: product.price.toString(), newAvailability:product.availabilityStatus)));
                },
                child: ExploreDescriptionconatiner(title: product.title, category: product.category, price: product.price.toString(), images: product.images[0])
              );
              
              
              });
                
              }),
            )
      
        ],
      ),
    ),
  ),
),

    );
  }
}