import 'package:dropshipper/constants/images.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {
      required this.name,
      required this.price,
      required this.isDevliveryFree});

  final String name;
  final int price;
  //***checks if delivery is free or not
  final bool isDevliveryFree;
  //*todo: two fields are still un-named for now!

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            children: [
              Image.asset(
                abdul,
                fit: BoxFit.fill,
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Abdul Hameed Khan'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Rs. 8500',
                          style: TextStyle(
                            color: Colors.red[100],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Icon(
                          Icons.share_rounded,
                          color: Colors.redAccent,
                          size: 26,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: Colors.pink[100],
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            'Free Delivery',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                  color: Colors.red[100],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            )
                            // ,SizedBox(width: 2,),
                            ,
                            Text(
                              'item',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
