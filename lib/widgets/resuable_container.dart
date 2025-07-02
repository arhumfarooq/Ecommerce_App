import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_apis/view_model/products_view_model.dart';

class ResuableContainer extends StatelessWidget {
 final  String  Category;
  const ResuableContainer({super.key, required this.Category});

  @override
  Widget build(BuildContext context) {
      ProductsViewModel productsViewModel = ProductsViewModel();
    return FutureBuilder(future: productsViewModel.getallcategoryproducts(Category), builder: (BuildContext context, snapshot){

return ListView.builder(
          scrollDirection: Axis.horizontal,
         itemCount: snapshot.data!.products!.length,
         itemBuilder: (context,index){
        return      Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: 
               Column(


                  children: [
                    
                    Container(
                      height: 240,
                       width: 169,
                      decoration: BoxDecoration(
                        color: Colors.white,
                         boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0, 3), // changes position of shadow
                                  ),
                                ]
                                ,borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 169,
                          
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20),
                             image: DecorationImage(
                               image: NetworkImage(snapshot.data!.products![index].images![0] ?? ""),
                               fit: BoxFit.cover,
                             )
                            ),
                            
                          ),
                            Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(snapshot.data!.products![index].title ?? '',
                  overflow: TextOverflow.ellipsis,style: GoogleFonts.poppins(
                    color: Color(0xff5c524f)
                  ),
                      
                      ),
                    )
                        ],
                      ),
                    ),
                  
                
                  ],
                ),
        
            
           
        );
        
        
        });

        });
  }
}