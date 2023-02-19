// ignore_for_file: prefer_const_constructors

import 'package:dropshop/utils/gsheet_api.dart';
import 'package:flutter/material.dart';

import 'todo_box.dart';

class todoGrid extends StatelessWidget {
  // todoGrid({super.key, this.text, this.noOftodo});
  // final text;
  // final noOftodo;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: gSheetApi.currentTodo.length,
      // itemCount: this.noOftodo,
      itemBuilder: (context, index) {
        return TodoBox(text: gSheetApi.currentTodo[index]);
        // return TodoBox(text: text.toString());
      },
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 4 / 3,
      ),
    );
  }
}
