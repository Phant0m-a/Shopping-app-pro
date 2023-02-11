import 'package:dropshipper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              ButtonToNavigate('Drop Shipper Homepage', () {
                Get.toNamed(MyRoutes.getBottomBar());
              }),

              ButtonToNavigate('Supplier Homepage', () {
                Get.toNamed(MyRoutes.getSupplierBottomBar());
              }),
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
