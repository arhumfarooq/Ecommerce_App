import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:practice_apis/controller/login_controller.dart';
import 'package:practice_apis/models/all_products.dart';
import 'package:practice_apis/models/cateogires_model.dart';
import 'package:practice_apis/models/login_model.dart';
import 'package:practice_apis/services/api_endpoints.dart';

class AppRepositry {

Future<AllProducts>fetchallroducts()async{

String url = ApiEndpoints.allProducts;
final response = await http.get(Uri.parse(url));
if (response.statusCode==200) {
  log("Api fetched");
  
  final body = jsonDecode(response.body);
  return AllProducts.fromJson(body);
}

throw Exception("Error fetching products");
  
}


Future<ProductsbyCategories> getallcategoryproducts(String channel)async{
  String url = ApiEndpoints.allProductCategories(channel);
  final response= await http.get(Uri.parse(url));
if (response.statusCode==200) {
  final body= jsonDecode(response.body);
  return ProductsbyCategories.fromJson(body);
}
throw Exception("Error fetching category products");

}



}