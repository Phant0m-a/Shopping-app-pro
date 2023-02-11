import 'package:flutter/material.dart';

class TextInRow extends StatelessWidget {
  TextInRow({super.key, required this.firstText, required this.secondText});

  String secondText;
  String firstText;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: firstText,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
          children: [
            TextSpan(
              text: secondText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.green),
            )
          ]),
    );
  }
}
