class CartItem1 {


final String productId;
final String productName;
final String  image;
final String productPrice;


int quantity = 1;


  CartItem1({
required this.productId,
required this.productName,
required this.image,
required this.productPrice,
int quantity =1


  });

  factory CartItem1.fromJson(Map<String, dynamic> json) {
    return CartItem1(

      productId: json['productId'],
      productName: json['productName'],
      image: json['image'],
      productPrice: json['productPrice'],
  
    );
  }

  Map<String, dynamic> toJson() {
    return {
  
      'productId': productId,
      'productName': productName,
      'image': image,
      'productPrice': productPrice,
  
    };
}


}