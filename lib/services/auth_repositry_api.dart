import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:practice_apis/services/api_client.dart';
import 'package:practice_apis/services/api_endpoints.dart';
import 'package:practice_apis/widgets/data/app_exception.dart';

class AuthRepositryApi {
final ApiClient apiClient = Get.find<ApiClient>();

Future<void> loginUser({
  required String username,
  required String password,
    required VoidCallback onSuccess, required Null Function(dynamic e) onError,
}) async {
try {
  final response = await apiClient.post(url: 
  ApiEndpoints.login_api,
  
  body: {
    'username': username,
    'password': password,
  }
  ).timeout(Duration(seconds: 30));
} catch (e) {
  throw RequestTimeOut("Request Timeout");
}
}


}