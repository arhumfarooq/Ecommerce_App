class ApiEndpoints {
static const String baseUrl = 'https://dummyjson.com';
static const apikey= "?api_key=21315d8c6a544793b82b72d0d5ebf9e3";

static String get allProducts => "$baseUrl/products/$apikey";

static String allProductCategories(String channel) => "$baseUrl/products/category/$channel/$apikey";

}