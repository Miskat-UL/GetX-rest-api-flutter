import 'dart:convert';

import 'package:getx_rest_api/models/products.dart';
import 'package:http/http.dart' as http;

class RemoteServer {
  static var client = http.Client();
  static String baseUrl = "http://127.0.0.1:8000/api/task-list/";
  static Map<String, String> headers = {"origin": "http://localhost:8401/"};
  static Future<List<Product>> fetchData() async {
    var response = await client.get(Uri.parse(baseUrl), headers: headers);
    // var product = [];

    if (response.statusCode == 200) {
      // var jsonResponse = response.body;
      // print(response.body);
      final items = jsonDecode(response.body);
      List<Product> product = items.map<Product>((json) {
        return Product.fromJson(json);
      }).toList();
      // List<Product> product = items.forEach((item) {
      //   return Product.fromJson(item);
      // });
      return product;
    } else {
      print("Failed to load data");
      return [];
    }
  }
}
