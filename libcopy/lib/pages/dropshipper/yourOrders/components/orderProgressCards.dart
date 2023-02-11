import 'package:flutter/material.dart';
import 'orderProgressDetail.dart';

class OrderProgressCards {
  Widget orderCard(indexOfProgressCards) {
    return orderCards[indexOfProgressCards];
  }

  List<Widget> orderCards = [
    OrderProgress(
        orderNumber: '377696',
        customerName: 'Muhammad Ahsan',
        customerAddress: 'bhakkar ,bhakkar and bhakkar',
        customerNumber: '+92 3095516942',
        supplierName: 'Nawab Collection',
        totalItemsPrice: '18500'),
    OrderProgress(
        orderNumber: '700000',
        customerName: 'Ahsan Ali',
        customerAddress: 'bhakkar ,bhakkar and bhakkar',
        customerNumber: '+92 3455832570',
        supplierName: 'Landa Collection',
        totalItemsPrice: '1200'),
    OrderProgress(
        orderNumber: '377696',
        customerName: 'Abdul Qudds',
        customerAddress: 'bhakkar ,bhakkar and bhakkar',
        customerNumber: '+92 30444444444',
        supplierName: 'Mirza Collection',
        totalItemsPrice: '10500')
  ];
}
