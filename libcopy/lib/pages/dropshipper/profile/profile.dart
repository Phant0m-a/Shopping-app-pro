import 'package:dropshipper/constants/styles.dart';
import 'package:dropshipper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';
import 'components/account_button.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 200,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [lightColor.withOpacity(0.5), Colors.white]),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Time",
                  style: MyTextStyles.headingLargePrimary,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total sales",
                      style: MyTextStyles.headingSmallPrimary,
                    ),
                    Text(
                      "Rs. 0",
                      style: MyTextStyles.headingLargePrimary,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Profit",
                      style: MyTextStyles.headingSmallPrimary,
                    ),
                    Text(
                      "Rs. 0",
                      style: MyTextStyles.headingLargePrimary,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Completed Orders",
                      style: MyTextStyles.headingSmallPrimary,
                    ),
                    Text(
                      "0",
                      style: MyTextStyles.headingLargePrimary,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          Text(
            "Account",
            style: MyTextStyles.headingLargePrimary,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Divider(
              thickness: 1,
            ),
          ),
          AccountButton(
            onTap: () {
              Get.toNamed(MyRoutes.getMeraProfit());

            },
            icon: Icons.currency_exchange_sharp,
            text: 'Mera Profit',
          ),
          AccountButton(
            onTap: () {
              Get.toNamed(MyRoutes.getBusinessDetails());

            },
            icon: Icons.wallet,
            text: 'Business Details',
          ),
          AccountButton(
            onTap: () {
              Get.toNamed(MyRoutes.getBankAccount());

            },
            icon: Icons.location_city_rounded,
            text: 'Bank Account',
          ),
          AccountButton(
            onTap: () {
              Get.toNamed(MyRoutes.getSharedItem());

            },
            icon: Icons.share_outlined,
            text: 'Shared Item',
          ),
        ],
      ),
    );
  }
}
