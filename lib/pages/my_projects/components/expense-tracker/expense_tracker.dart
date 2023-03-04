// ignore_for_file: prefer_const_constructors

import 'package:dropshop/pages/my_projects/components/expense-tracker/components/balance-container.dart';
import 'package:dropshop/pages/my_projects/components/expense-tracker/components/middle-container.dart';
import 'package:flutter/material.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // balance container
              BalanceContainer(),
              SizedBox(height: 10),
              // middle - container
              MiddleContainer(),
              // add button
              ElevatedButton(
                  onPressed: showDialog,
                  child: Text(
                    '+',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget showDialog() {
    return AlertDialog(
      title: Text(
        'New expense or income',
        style: TextStyle(color: Colors.grey),
      ),
      backgroundColor: Colors.grey[200],
      content: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: '\$ 00.0', border: OutlineInputBorder()),
          ),
          SizedBox(height: 3),
          TextField(
            decoration: InputDecoration(
                hintText: 'income or expense', border: OutlineInputBorder()),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'cancel',
                    style: TextStyle(color: Colors.white),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Enter',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
