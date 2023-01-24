import 'package:dropshipper/constants/styles.dart';
import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
 final  void Function() onTap;
  final IconData icon;
  final String text;
  const AccountButton({Key? key, required this.onTap, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon(icon),
            SizedBox(width: 10,),
            Text(text, style: MyTextStyles.headingSmallBlack,)
          ],
        ),
      ),
    );
  }
}
