// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropshipper/pages/categories/categories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import '../../constants/colors.dart';
import '../../routes/routes.dart';
import '../home/home_page.dart';
import '../profile/profile.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> tabItems = [
    HomePage(),
    Categories(),
    Center(
      child: Text('about'),
    ),
    Profile(),
  ];
  int? currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int? index) {
    setState(() {
      currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: tabItems[currentIndex!],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BubbleBottomBar(
          hasNotch: false,
          // fabLocation: BubbleBottomBarFabLocation.end,
          opacity: .2,
          currentIndex: currentIndex,
          onTap: changePage,
          elevation: 10,
          tilesPadding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          items: const <BubbleBottomBarItem>[
            BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.home_filled,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.home_filled,
                // color: Colors.red,
              ),
              title: Text("Home"),
            ),
            BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
              ),
              title: Text("Category"),
            ),
            BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.info,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.info,
              ),
              title: Text("About"),
            ),
            BubbleBottomBarItem(
              backgroundColor: primary,
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.person,
              ),
              title: Text("About"),
            ),
          ],
        ),
      ),
    );
  }
}
