import 'package:flutter/material.dart';

class ProgressButton extends StatelessWidget {
  ProgressButton({
    this.isIcon = false,
    required this.buttonName,
    this.callBackFunction,
    this.foregroundColor = Colors.deepPurple,
    this.backgroundColor = Colors.white,
    this.orderCardIndexNo = 0,
    super.key,
  });

  String buttonName;
  bool isIcon;
  var callBackFunction;
  int orderCardIndexNo;
  Color backgroundColor;
  Color foregroundColor;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(backgroundColor),
        foregroundColor: MaterialStatePropertyAll(foregroundColor),
        // foregroundColor: MaterialStateProperty.resolveWith((states) => getForegroundColor(states)),
        // backgroundColor:MaterialStateProperty.resolveWith((states) => getBackgroundColor(states)),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(vertical: 13, horizontal: 15)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(width: 2, color: Colors.deepPurple.shade900),
            borderRadius: BorderRadius.circular(50))),
      ),
      onPressed: () {
        callBackFunction(orderCardIndexNo);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isIcon == true) ...[
            Icon(
              Icons.add_shopping_cart_outlined,
              color: Colors.white.withOpacity(0.9),
            ),
          ],
          Text(buttonName),
        ],
      ),
    );
  }
}
