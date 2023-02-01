// ignore_for_file: prefer_const_constructors

import 'package:dropshipper/constants/colors.dart';
import 'package:dropshipper/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeraProfit extends StatefulWidget {
  const MeraProfit({Key? key}) : super(key: key);

  @override
  State<MeraProfit> createState() => _MeraProfitState();
}

class _MeraProfitState extends State<MeraProfit> {
  TextStyle kUserDetailTextStyle = TextStyle(
    color: secondary,
    fontSize: 13,
    // fontWeight: FontWeight.bold
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                //navigation
                Row(
                  children: [
                    //arrow
                    IconButton(
                        onPressed: (() {
                          Navigator.of(context).pop();
                        }),
                        icon: Icon(
                          Icons.arrow_back,
                          color: secondary,
                          size: 18,
                        )),
                    //screen name
                    Text(
                      'Mera Profit',
                      style: TextStyle(
                          color: secondary,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                //Pending & Paid
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    my_custom_button(
                      onTap: () {},
                      borderColor: Colors.white,
                      myColor: Colors.green.shade700,
                      myText: 'Pending',
                      buttonTextStyle: TextStyle(color: Colors.white),
                    ),
                    my_custom_button(
                      onTap: (() {}),
                      borderColor: primary,
                      myColor: Colors.white,
                      myText: 'Paid',
                      buttonTextStyle: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                //
                Container(
                    padding: EdgeInsets.all(12.0),
                    child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisExtent: 220,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return MyCard(
                            kUserDetailTextStyle: kUserDetailTextStyle);
                      },
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//card custom
class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
    required this.kUserDetailTextStyle,
  }) : super(key: key);

  final TextStyle kUserDetailTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        // border: Border.all(color: primary),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 1.5,
              blurStyle: BlurStyle.outer)
        ],
      ),
      child: Column(
        children: [
          //order & date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Order#386429',
                style: TextStyle(color: primary, fontSize: 11),
              ),
              Text(
                '26 Jan 2023',
                style: TextStyle(
                    color: primary, fontSize: 11, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          //userpic and details
          Row(
            children: [
              //userpic
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: primary),
                    image: DecorationImage(
                      image: AssetImage(abdul),
                      fit: BoxFit.contain,
                    ),
                  )),
              SizedBox(width: 20),
              //details
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abdul Hameed Khan',
                      style: TextStyle(
                        color: primary,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Customer: Abdul Quddus',
                      style: kUserDetailTextStyle,
                    ),
                    Text(
                      'Seller: Ottoman Empire',
                      style: kUserDetailTextStyle,
                    ),
                    Text(
                      '3 Pieces',
                      style: kUserDetailTextStyle,
                    ),
                  ],
                ),
              )
            ],
          ),
          // your-profit
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Your Profit:',
                style: TextStyle(
                    color: primary, fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                '300',
                style: TextStyle(
                    color: Color.fromARGB(255, 49, 212, 134),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(thickness: 1, color: primary),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //item price
              Row(
                children: [
                  Text(
                    'Item Price:',
                    style: TextStyle(
                        color: primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '1000',
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 212, 134),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //Order Amount
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Order Amount:',
                    style: TextStyle(
                        color: primary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    '3300',
                    style: TextStyle(
                        color: Color.fromARGB(255, 49, 212, 134),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
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

class my_custom_button extends StatelessWidget {
  my_custom_button(
      {Key? key,
      required this.myColor,
      required this.myText,
      required this.buttonTextStyle,
      required this.borderColor,
      required this.onTap})
      : super(key: key);
  final Color myColor;
  final String myText;
  final TextStyle buttonTextStyle;
  final Color borderColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: myColor,
            border: Border.all(color: borderColor)),
        child: Text(
          myText,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
