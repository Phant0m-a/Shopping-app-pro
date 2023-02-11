import 'package:flutter/material.dart';

class cardText extends StatelessWidget {
  const cardText({
    Key? key,
    required this.firstText,
    required this.lastText,
    this.firstTextStyle = const TextStyle(),
    this.lastTextStyle = const TextStyle(),
  }) : super(key: key);
  final String firstText;
  final String lastText;
  final TextStyle firstTextStyle;
  final TextStyle lastTextStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: firstTextStyle,
        ),
        Text(
          lastText,
          style: lastTextStyle,
        )
      ],
    );
  }
}