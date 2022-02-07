import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

List<Product> products = [];

Future<Product> getProducts() async {
  await fetchAlbum().then((dailyTaskList) {
    products = dailyTaskList;

    return products;
  });
}

Future<List> fetchAlbum() async {
  final response = await http.get(Uri.parse('http://localhost:3000/products'));

  if (response.statusCode == 200) {
    return (json.decode(response.body) as List)
        .map((i) => Product.fromJson(i))
        .toList();
  } else {
    throw Exception('Failed to load album');
  }
}

class Product {
  final String name, image;
  final int price;

  Product({
    this.name,
    this.price,
    this.image,
  });

  factory Product.fromJson(Map<dynamic, dynamic> parsedJson) {
    return Product(
        name: parsedJson['name'],
        price: parsedJson['price'],
        image: parsedJson['image']);
  }
}

/*
class Product {
  final String image, title;
  final int price, id;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "burger",
    price: 234,
    image: "assets/images/burgerold.png",
  ),
  Product(
    id: 2,
    title: "cheese dip",
    price: 234,
    image: "assets/images/cheese_dip.png",
  ),
  Product(
    id: 3,
    title: "cola",
    price: 234,
    image: "assets/images/cola.png",
  ),
  Product(
    id: 4,
    title: "ice cream",
    price: 234,
    image: "assets/images/ice_cream.png",
  ),
  Product(
    id: 5,
    title: "noodles",
    price: 234,
    image: "assets/images/noodles.png",
  ),
  Product(
    id: 6,
    title: "pizza",
    price: 234,
    image: "assets/images/pizza.png",
  ),
];

 */
