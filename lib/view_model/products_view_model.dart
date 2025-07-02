import 'package:http/http.dart';
import 'package:practice_apis/models/all_products.dart';
import 'package:practice_apis/models/cateogires_model.dart';
import 'package:practice_apis/repositry/app_repositry.dart';

class ProductsViewModel {

final _rep= AppRepositry();

Future<AllProducts> fetchallroducts()async{

final response= await _rep.fetchallroducts();
return response;

}

Future<ProductsbyCategories>getallcategoryproducts(String channel)async{
final response= await _rep.getallcategoryproducts(channel);
return response;

}

}