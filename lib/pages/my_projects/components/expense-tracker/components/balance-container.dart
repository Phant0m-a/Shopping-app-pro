// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
      height: 200,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'B a l a n c e',
            style: TextStyle(color: Colors.grey[500], fontSize: 16),
          ),
          Text(
            '\$ 18,000',
            style: TextStyle(color: Colors.grey[800], fontSize: 40),
          ),

          //income or expense
          Row(
            children: [
              //income
              Row(
                children: [
                  //circle
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey[300],
                      child: Center(
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.black,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  //text
                  Text(
                    '\$ 250.0',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
