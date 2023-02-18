// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: [
          Expanded(
            child: Container(color: Colors.green[700]),
          ),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text('write something'),
            ),
          ))
        ],
      ),
    );
  }
}
