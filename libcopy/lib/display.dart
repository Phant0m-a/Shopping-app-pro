import 'package:dropshipper/pages/home/home_page.dart';
import 'package:dropshipper/pages/products/products.dart';
import 'package:dropshipper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropshipper/pages/order/orders.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ButtonToNavigate('Homepage', () {
                Get.toNamed(MyRoutes.getBottomBar());
              }),
              ButtonToNavigate('Category Screen', () {
                Get.toNamed(MyRoutes.getCategoryScreen());
              }),
              ButtonToNavigate('Products', () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Products()));
              }),
              ButtonToNavigate('Order', () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Order()));
              },),
           
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonToNavigate extends StatelessWidget {
  final String buttonName;
  var navigationRoute;
  ButtonToNavigate(this.buttonName, this.navigationRoute);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: navigationRoute,
      child: Text(buttonName),
    );
  }
}
