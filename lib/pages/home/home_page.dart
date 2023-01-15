// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropshipper/pages/home/components/category_avatar.dart';
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
            //Category Avatars list horizontal
            Container(
              padding:
                  const EdgeInsets.only(left: 15, top: 20, right: 5, bottom: 0),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.redAccent,
                        radius: 30,
                        child: Icon(
                          Icons.category_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Categories')
                    ],
                  ),
                  CategoryAvatar(catName: 'Men', catIcon: Icons.image),
                  CategoryAvatar(catName: 'Men', catIcon: Icons.image),
                  CategoryAvatar(catName: 'Women', catIcon: Icons.image)
                ],
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            //Products for you
             Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15.0, top: 5, bottom: 5, right: 15),
                    child: Text(
                      'Products for you',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
            // Grid

          ],
        ),
      )),
    );
  }
}
