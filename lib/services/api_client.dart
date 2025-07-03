class ApiClient {
  late String token;
  final String appBaseUrl;
  late Map<String, String> _mainheaders;
  late Duration timeout;

  ApiClient({required this.appBaseUrl}) {
	baseUrl = appBaseUrl;
	timeout = const Duration(seconds: 30);
	_mainheaders = {
	  "Content-Type": "application/json; charset==UTF-8",
	  "Authorization": "Bearer $token",
	};
  }

  
}