// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/material.dart';

class Product {
  Product({
    required this.productName,
    required this.price,
    required this.productLink,
    required this.image,
    required this.id,
  });

  int id;
  String productName;
  String price;
  String productLink;
  String image;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        productName: json["product_name"],
        price: json["price"],
        productLink: json["product_link"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_name": productName,
        "price": price,
        "product_link": productLink,
        "image": image,
      };
}
