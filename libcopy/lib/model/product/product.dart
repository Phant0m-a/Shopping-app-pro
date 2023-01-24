import 'package:flutter/material.dart';

class Product {
  Product({
    required this.imageSrc,
    required this.name,
    required this.price,
    required this.isDeliverfree,
    required this.deliveryFreeDistance,
    required this.shareLink,
    required this.shop,
  });

  // imageScr title price deliveryType deliveryFreeDistance shareLink shop
  final String imageSrc;
  final String name;
  final int price;
  final String shop;
  final bool isDeliverfree;
  final int deliveryFreeDistance;
  final String shareLink;

  static List<Product> ProductList = [
    Product(
        shop: 'shop name',
        imageSrc: 'assets/images/p1.png',
        name: 'Standard office shirt',
        price: 1200,
        isDeliverfree: true,
        deliveryFreeDistance: 25,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'assets/images/p2.png',
        name: 'Casual jacket',
        price: 2999,
        isDeliverfree: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'assets/images/p3.png',
        name: 'Casual Sweater',
        price: 1600,
        isDeliverfree: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'assets/images/p4.png',
        name: 'Casual leather jacket ',
        price: 1600,
        isDeliverfree: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
    Product(
        shop: 'shop name',
        imageSrc: 'assets/images/p5.png',
        name: 'Casual jacket with shirt ',
        price: 3500,
        isDeliverfree: true,
        deliveryFreeDistance: 35,
        shareLink: 'no link'),
  ];
}
