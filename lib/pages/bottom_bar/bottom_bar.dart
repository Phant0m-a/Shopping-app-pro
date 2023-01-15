// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dropshipper/pages/categories/categories.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import '../../constants/colors.dart';
import '../../routes/routes.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List<Widget> tabItems = [
    Center(child: Text('Home'),),
    Categories(),
    Center(child: Text('about'),),
    Center(child: Text('Profile'),),
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
        // drawer: Drawer(),
        appBar: AppBar(
          title: Text(
            'Home',
          ),
        ),
        body: Column(
          children: [
            Center(
              child: tabItems[currentIndex!],
              // ElevatedButton(
              //   onPressed: () {
              //     FirebaseAuth.instance.signOut().then(
              //           (value) => Get.offAllNamed(MyRoutes.getWelcome()),
              //         );
              //   },
              //   child: Text('Sign out'),
              // ),
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
