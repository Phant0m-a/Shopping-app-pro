//Payment_cards
import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
    required this.title,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final int price;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.only(left: 10,top:5,bottom: 5),
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey.shade200)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Text(
                //
                '₨ ${price.toString()} ',
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}