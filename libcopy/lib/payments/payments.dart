// ignore_for_file: prefer_const_constructors


import 'package:dropshipper/constants/colors.dart';
import 'package:dropshipper/constants/styles.dart';
import 'package:flutter/material.dart';
import 'components/payment_card.dart';

class Payments extends StatelessWidget {
  const Payments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              'Payments',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            // two containers in a Row with titles and bold price subtitle
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              height: 100,
              child: Row(
                children: [
                  PaymentCard(
                    title: 'Next Payment (24 Mar)',
                    price: 18500,
                    onTap: () {},
                  ),
                  PaymentCard(
                    title: 'Last Payment (21  Mar)',
                    price: 625,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
