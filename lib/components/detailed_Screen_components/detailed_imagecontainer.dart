import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:practice_apis/widgets/data/app_exception.dart';

class DetailedImagecontainer extends StatelessWidget {
  final String image;
  const DetailedImagecontainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
        final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
          margin: EdgeInsets.symmetric(vertical: 20),
        height: screenHeight/2.5,
        width: screenWidth,
        
        decoration: BoxDecoration(
          boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          offset: Offset(0, 3),
          blurRadius: 7,
        
        )
        
          ],
          
       
        ),
        child: ClipRRect(
child: Image.network(
  image,
  fit: BoxFit.cover,
  loadingBuilder: (context, child, loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(child: SpinKitFadingCircle());
  },
  errorBuilder: (context,error,StackTrace){
return Center(
  child: throw ServerException("Internal server error"),
);

  },
)

,

        ),
          );
  }
}