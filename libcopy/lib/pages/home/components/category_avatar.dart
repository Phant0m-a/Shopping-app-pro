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
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
          child: CircleAvatar(
            backgroundColor: Colors.grey[400],
            radius: 30,
            child: Icon(
              catIcon,
              color: Colors.grey[100],
              size: 35,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(catName, style: TextStyle(fontSize: 12),)
      ],
    );
  }
}
