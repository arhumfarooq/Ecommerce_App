import 'dart:convert';

import 'package:get/get.dart';
import 'package:practice_apis/models/card_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartController extends GetxController{

RxList<CartItem1> cartItems= <CartItem1>[].obs;


void addItem(CartItem1 item) {

final index= cartItems.indexWhere((i)=>i.productId==item.productId);

if (index==-1) {
  

cartItems[index]=CartItem1(

 productId: cartItems[index].productId, productName:cartItems[index].productName, image: cartItems[index].image, productPrice: cartItems[index].productPrice,

  );

}else{
  cartItems.add(item);
}

void removeItem(int index){
cartItems.removeAt(index);
saveCart();
}

void clearChat(){
  cartItems.clear();
  saveCart();
}

}

Future<void> saveCart() async{
  SharedPreferences prefs= await SharedPreferences .getInstance();
  List<String> cartJson = cartItems.map((item)=>jsonEncode(item.toJson())).toList();
  await prefs.setStringList('cartItems', cartJson);
}

Future<void>loadCart()async{
SharedPreferences prefs = await SharedPreferences.getInstance();
List<String>?cartJson = prefs.getStringList('cartItems');
if (cartJson!=null) {
  cartItems.value = cartJson.map((item) => CartItem1.fromJson(jsonDecode(item))).toList();
}
}

}
