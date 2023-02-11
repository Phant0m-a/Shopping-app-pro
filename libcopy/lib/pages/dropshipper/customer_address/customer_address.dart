
import 'package:flutter/material.dart';
import 'package:dropshipper/widgets/textformfeild.dart';
import 'package:get/get.dart';

import '../../../../constants/styles.dart';
import '../../../../routes/routes.dart';

class CustomerAddress extends StatelessWidget {
  const CustomerAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Text('Enter Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'Phone Number',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'Dosra Mobile Number (Optional)',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'House/Makan/Apartment Number',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'Street/Gali Number /Road Name',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'Sector/ Block/Area Name',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'Nearest Landmark/ Mashroo Jagah',
                ),
                CustomTextFormField(
                  maxLines: 1,
                  labelText: 'City',
                  icon: Icon(Icons.location_on),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(MyRoutes.getOrderDetails());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Next",
                        style: MyTextStyles.headingSmallWhite,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
