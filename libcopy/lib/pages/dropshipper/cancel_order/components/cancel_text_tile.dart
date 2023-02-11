import 'package:flutter/material.dart';

class CancelTextTile extends StatelessWidget {
  CancelTextTile(
      {required this.ansText,
      required this.groupValue,
      required this.value,
      required this.onChange});

  String ansText;
  String groupValue;
  String value;
  var onChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RadioListTile(
          title: Text(ansText),
          value: value,
          groupValue: groupValue,
          onChanged: (value) {
            onChange(value);
            print(value);
          },
        )
      ],
    );
  }
}
