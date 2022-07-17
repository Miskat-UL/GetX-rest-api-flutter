import 'dart:convert';

import 'package:getx_rest_api/models/products.dart';
import 'package:http/http.dart' as http;

class RemoteServer {
  static var client = http.Client();

  static Future<List<Product>> fetchData() async {
    var response =
        await client.get(Uri.parse("http://127.0.0.1:8000/api/task-list"));
    var product = [];
    
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      // print(response.body);
      final items = json.decode(response.body).cast<Map<String, dynamic>>();
      List<Product> employees = items.map<Product>((json) {
        return Product.fromJson(json);
      }).toList();
      
      return employees;
    } else {
      print("Failed to load data");
      return [];
    }
  }
}
