import 'package:get/get.dart';

import '../models/products.dart';
import '../services/remote_service.dart';

class ProductController extends GetxController {
  var productList = List<Product>.empty(growable: true).obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    var product = await RemoteServer.fetchData();
    print(product);
    if (product != null) {
      productList.value = product;
    }
  }
}
