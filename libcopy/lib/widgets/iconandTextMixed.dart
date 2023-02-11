import 'package:flutter/material.dart';

class InlineTextandIcon extends StatelessWidget {
  Function()? buttonTap;
  IconData IconName;
  bool isIcon;
  double iconSize;
  Color iconColor;
  String FirstText = '';
  String SecondText = '';
  TextStyle FirstTextStyle;
  TextStyle SecondTextStyle;
  InlineTextandIcon(
      {super.key,
        this.buttonTap,
        this.iconColor = Colors.deepOrange,
        this.iconSize = 14,
        this.IconName = Icons.help,
        this.isIcon = false,
        this.FirstText = '',
        this.SecondText = '',
        this.SecondTextStyle = const TextStyle(),
        this.FirstTextStyle = const TextStyle()});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTap ?? (() {

      }),
      child: Row(
        children: [
          if (isIcon == true)
            Icon(
              IconName,
              color: iconColor,
              size: iconSize,
            ),
          Text(
            FirstText,
            style: FirstTextStyle,
          ),
          Text(
            SecondText,
            style: SecondTextStyle,
          )
        ],
      ),
    );
  }
}
