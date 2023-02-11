import 'package:dropshipper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future bottomSheet(context) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 250,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Thanks for Your Order',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                textAlign: TextAlign.justify,
                'after your order is confirmed, you will recieve a notification.You will recieve your profit in your account 48-72 hours after seccessful delievery',
                style: TextStyle(fontSize: 12, letterSpacing: 1),
              ),
              ElevatedButton(onPressed: (){
                Get.offAllNamed(MyRoutes.getBottomBar());
              }, child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart),
                    Text("  Continue Shopping"),
                  ],
                ),
              ),),

            ],
          ),
        );
      });
}
