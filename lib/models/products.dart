// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';


class Product {
  Product({
    required this.productName,
    required this.price,
    required this.productLink,
    required this.image,
  });

  String productName;
  String price;
  String productLink;
  String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        productName: json["product_name"],
        price: json["price"],
        productLink: json["product_link"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "product_name": productName,
        "price": price,
        "product_link": productLink,
        "image": image,
      };
}
