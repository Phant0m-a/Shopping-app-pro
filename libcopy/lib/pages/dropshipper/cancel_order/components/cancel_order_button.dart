import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CancelOrderButton extends StatelessWidget {
  CancelOrderButton({
    this.isIcon = false,
    required this.buttonName,
    this.callBackFunction,
    this.orderCardIndexNo = 0,
    super.key,
  });

  String buttonName;
  bool isIcon;
  var callBackFunction;
  int orderCardIndexNo;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        // backgroundColor: MaterialStatePropertyAll(Colors.orange),
        padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.symmetric(vertical: 15, horizontal: 15)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.deepPurple.shade900),
            borderRadius: BorderRadius.circular(10))),
      ),
      onPressed: () {
        callBackFunction();
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
          Text(
            buttonName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
