import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TodoBox extends StatelessWidget {
  const TodoBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.yellow[200], borderRadius: BorderRadius.circular(4)),
      child: Center(child: Text(text)),
    );
  }
}
