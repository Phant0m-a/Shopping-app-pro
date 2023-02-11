import 'package:dropshipper/constants/styles.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images.dart';
import '../../../../routes/routes.dart';
import 'package:get/get.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Payment Methods"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(

                children: [
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: primary, width: 2), borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(image: AssetImage(abdul))
                                ),
                                width: 70,
                                height: 70,
                              ),
                              SizedBox(width: 10,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jazz Cash",
                                    style: MyTextStyles.headingSmallPrimary,
                                  ),
                                  SizedBox(height: 20,),
                                  Text(
                                    "Account: +923001234567",
                                    style: MyTextStyles.regularPrimary,
                                  ),
                                ],
                              ),

                                ],
                              ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(

                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "Edit",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.credit_card,
                            size: 100,
                            color: Colors.greenAccent,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "No payment method added",
                            style: MyTextStyles.subHeadingGrey,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(MyRoutes.getAddBankDetails());

              },
              child: Container(
                width: double.infinity  ,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: primary,
                ),
                  child:  Center(child: Text('Add payment method', style: MyTextStyles.subHeadingWhite ,))),
            ),
          ],
        ),
      ),
    );
  }
}
