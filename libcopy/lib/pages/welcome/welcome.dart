import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/styles.dart';
import 'componets/onboarding.dart';
import 'package:get/get.dart';
import 'package:dropshipper/routes/routes.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);


  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              TextButton(
                onPressed: () {
                  Get.toNamed(MyRoutes.getDisplayRoute());
                },
                child: Text(
                  'skip',
                  style: MyTextStyles.headingSmallPrimary,
                ),
              ),
            ],
          ),
          const Expanded(child: OnBoarding()),
          SizedBox(height: 20,),


          InkWell(
            onTap: () {
              Get.toNamed(MyRoutes.getPhone());
              // showBottomSheet(context);
            },
            child: Container(
                width: double.infinity  ,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(20),
                  color: primary,
                ),
                child: Center(child: Text('Login', style: MyTextStyles.headingSmallWhite))),
          ),

        ],
      ),
    ));
  }
}
