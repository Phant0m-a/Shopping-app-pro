// ignore_for_file: prefer_const_constructors

import 'package:dropshop/pages/my_projects/components/todo/components/todo_box.dart';
import 'package:dropshop/pages/my_projects/components/todo/components/todo_grid.dart';
import 'package:dropshop/utils/gsheet_api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Todo extends StatefulWidget {
  Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController _controller = TextEditingController();
  String todoText = '';
  //post function
  void postTodo() {
    gSheetApi.postNew(_controller.text);
    print(_controller.text);
    _controller.clear();
    setState(() {});
  }

  @override
  void initState() {
    _controller.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text(
            'N O T E S ',
            style: TextStyle(color: Colors.grey.shade600),
          ),
          backgroundColor: Colors.grey[300]),
      body: Container(
        padding: EdgeInsets.all(5),
        color: Colors.grey[300],
        child: Column(
          children: [
            Expanded(
                child: todoGrid(
                    // noOftodo: 5,
                    // text: _controller.text,
                    )),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'write something',
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _controller.clear();
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '@ c r e a t e d b y A h s a n',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: postTodo,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade500,
                          borderRadius: BorderRadius.circular(5)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
