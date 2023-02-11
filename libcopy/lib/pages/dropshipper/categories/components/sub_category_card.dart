import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../constants/styles.dart';
import '../../../../../model/category/sub_category.dart';

class SubCatCard extends StatelessWidget {
  const SubCatCard({Key? key, required this.cardItem}) : super(key: key);
  final SubCatItem cardItem;
  final elevation = 10.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

        Get.toNamed(cardItem.navigator);

      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5)
            ),
            child: Image.asset(cardItem.image, fit: BoxFit.cover,),
          ),
          Center(
            child: Text(
              cardItem.title,
              style: MyTextStyles.headingSmallPrimary,
            ),
          )
        ],
      ),
    );
  }
}
