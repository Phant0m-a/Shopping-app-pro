// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'components/my_app_bar.dart';
import 'components/my_text_controller.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  TextEditingController searchController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: MYAppBar(
          username: 'Abdul Hameed',
        ),
      ),
      //body
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //search field
            myTextField(
              hintText: 'Search',
              textController: searchController,
            ),
            //carousal
            Text('not implemented yet'),
            
          ],
        ),
      )),
    );
  }
}
