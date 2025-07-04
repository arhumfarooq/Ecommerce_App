

import 'dart:developer';

import 'package:http/http.dart' as http;

class ApiClient {
  Future<http.Response> post({
    required String url,
    Object?body,

  })async{

    return await http.post(Uri.parse(url),body: body);
  }
}