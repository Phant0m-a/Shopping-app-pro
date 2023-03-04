
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
                  child: Container(
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Container(
                    color: Colors.grey[100],
                    margin: const EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      leading: Icon(Icons.arrow_upward),
                      title: Text(
                        'Pocket money',
                        style: TextStyle(color: Colors.green),
                      ),
                      trailing: Text(
                        '\$ 100.0',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ));
  }
}