import 'package:dropshop/pages/my_projects/components/todo/todo.dart';
import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 4/3,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Todo(),
        )
      ],
    );
  }
}
