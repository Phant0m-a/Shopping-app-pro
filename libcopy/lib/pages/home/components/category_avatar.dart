import 'package:dropshipper/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryAvatar extends StatelessWidget {
  const CategoryAvatar(
      {super.key, required this.catName, required this.catIcon});
  final String catName;
  final IconData catIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
              width: 60,
              height: 60,
              margin:
                  const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.pink.shade200, width: 2),
                image:
                    DecorationImage(image: AssetImage(abdul), fit: BoxFit.fill),
                color: Colors.white,
                shape: BoxShape.circle,
              )
              // CircleAvatar(
              //     backgroundColor: Colors.grey[400],
              //     radius: 30,
              //     child: Image.asset(
              //       abdul,
              //       fit: BoxFit.cover,
              //     )

              //     // Icon(
              //     //   catIcon,
              //     //   color: Colors.grey[100],
              //     //   size: 35,
              //     // ),
              //     ),
              ),
          SizedBox(height: 20),
          Text(
            catName,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
