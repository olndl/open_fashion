class Endpoints {
  Endpoints._();
  static String contentType = 'application/json';
  static String baseUrl =
      'https://my-json-server.typicode.com/olndl/open-fashion-store';
  static String allCategories = '$baseUrl/main_categories';
  static String women = '$baseUrl/products?main_category=women';
  static String men = '$baseUrl/products?main_category=men';
  static String beauty = '$baseUrl/products?main_category=beauty';
  static String accessories = '$baseUrl/products?main_category=accessories';
  static Map<String, dynamic> queryParamsTop = {'newArrival': 'true'};
//https://my-json-server.typicode.com/olndl/open-fashion-store/products?main_category=beauty
  // final Map<String, Object> headers = {
  //   'X-RapidAPI-Key': 'b36b3f22c9msh00f2aa1f7322735p1c5c02jsn588bc3a99990'
  // };
  // final Map<String, Object> paramsEn = {'lang': 'en', 'country': 'us'};
}
