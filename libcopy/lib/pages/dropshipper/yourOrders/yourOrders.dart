import 'package:flutter/material.dart';
import 'components/orderProgressCards.dart';
import 'components/progressButton.dart';

class YourOrders extends StatefulWidget {
  @override
  State<YourOrders> createState() => _YourOrdersState();
}

class _YourOrdersState extends State<YourOrders> {
  int indexOfProgressCards = 0;

  changeIndexNumber(int index) {
    setState(() {
      indexOfProgressCards = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressButton(
                      buttonName: 'In Progress',
                      orderCardIndexNo: 0,
                      callBackFunction: changeIndexNumber,
                      backgroundColor: indexOfProgressCards == 0
                          ? Colors.deepPurple
                          : Colors.white,
                      foregroundColor: indexOfProgressCards == 0
                          ? Colors.white
                          : Colors.deepPurple,
                    ),

                    ProgressButton(
                      buttonName: 'Delevered',
                      orderCardIndexNo: 1,
                      callBackFunction: changeIndexNumber,
                      backgroundColor: indexOfProgressCards == 1
                          ? Colors.deepPurple
                          : Colors.white,
                      foregroundColor: indexOfProgressCards == 1
                          ? Colors.white
                          : Colors.deepPurple,
                    ),

                    ProgressButton(
                      buttonName: 'Returned',
                      orderCardIndexNo: 2,
                      callBackFunction: changeIndexNumber,
                      backgroundColor: indexOfProgressCards == 2
                          ? Colors.deepPurple
                          : Colors.white,
                      foregroundColor: indexOfProgressCards == 2
                          ? Colors.white
                          : Colors.deepPurple,
                    ),
                  ],
                )),
                OrderProgressCards().orderCard(indexOfProgressCards),
                OrderProgressCards().orderCard(indexOfProgressCards),
                OrderProgressCards().orderCard(indexOfProgressCards),
                OrderProgressCards().orderCard(indexOfProgressCards),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
