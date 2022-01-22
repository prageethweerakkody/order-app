import 'package:flutter/material.dart';

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
