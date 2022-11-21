class Endpoints {
  Endpoints._();
  static String contentType = 'application/json';
  static String baseUrl = 'https://fakestoreapi.com';
  static String allCategories = '$baseUrl/products/categories';
  static String women = "$baseUrl/products/category/women's clothing";
  static Map<String, dynamic> queryParamsTop = {'limit': '4'};
  // final Map<String, Object> headers = {
  //   'X-RapidAPI-Key': 'b36b3f22c9msh00f2aa1f7322735p1c5c02jsn588bc3a99990'
  // };
  // final Map<String, Object> paramsEn = {'lang': 'en', 'country': 'us'};
}
