import 'package:flutter/material.dart';

class QunatityButton extends StatelessWidget {
  QunatityButton({required this.iconName, required this.onClick});

  final IconData iconName;
  var onClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.deepOrange.shade600),
            borderRadius: BorderRadius.circular(5)),
        child: Icon(
          iconName,
          size: 10,
        ),
      ),
    );
  }
}
