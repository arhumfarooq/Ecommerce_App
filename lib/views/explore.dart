import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/view_model/products_view_model.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
ProductsViewModel productsViewModel = ProductsViewModel();
 final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white ,
body: SafeArea(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      //         Container(
      //           height: 50,
      //           width: double.infinity,
            
      //           decoration: BoxDecoration(
      //             border: Border.all(
      //               color: Colors.grey,
      //             ),
        
      //             borderRadius: BorderRadius.circular(20)
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      //             child: TextFormField(
      // decoration: InputDecoration(
      //   border: InputBorder.none,
      //   suffixIcon: IconButton(
      // onPressed: () {
        
      // },
      // icon: Icon(Icons.search),
      //   ),
      //   focusedBorder: InputBorder.none
      // ),
      
      //             ),
      //           ),
      //         )
        
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
              
              return ListView.builder(
                
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: snapshot.data!.products!.length,
                itemBuilder: (context,index){
              return Container(
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
                    child: Image.network(snapshot.data!.products![index].images[0] ?? " ")),
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
     padding: const EdgeInsets.symmetric(horizontal: 20),
     child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(snapshot.data!.products![index].title ?? '',
                      overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(
                        color: Color(0xff5c524f),fontSize: 15,fontWeight: FontWeight.w700
                      ),
                          
                          ),
                          Row(
                            children: [
                              Text("Category :",style: GoogleFonts.roboto(
                                fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff5c524f)
                              ),),
                              Text(snapshot.data!.products![index].category,style: GoogleFonts.poppins(
                                color: Color(0xff5c524f),fontSize: 10
                              ),),
                              SizedBox(width: 21,),
Container(height: 25,
width: 90,

decoration: BoxDecoration(
  color: Color(0xff3c3c3c),
  borderRadius: BorderRadius.circular(10),
),
child: Center(
  child: Text("Add to card",style: GoogleFonts.poppins(color: Colors.white
  ,fontSize: 13
  ),),
),
)

                            ],
                          ),
     
                           Row(children: [
                             Text("Price :",style: GoogleFonts.roboto(
                                fontSize: 13,fontWeight: FontWeight.w400,color: Color(0xff5c524f)
                              ),),
                             Text("\$"+"${snapshot.data!.products![index].price.toString()}",style: GoogleFonts.poppins(
                              fontSize: 10,color: Color(0xff5c524f)
                             ),)
                           ],)
      ],
     ),
   ),
  ),
)

                ],
              ),
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