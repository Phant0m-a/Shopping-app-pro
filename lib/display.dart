import 'package:dropshipper/pages/home/home_page.dart';
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
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.getBottomBar());
                },
                child: HomePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
