// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../categories/categories.dart';
import '../home/home_page.dart';
import '../profile/profile.dart';
import '../yourOrders/yourOrders.dart';

class DropshipperBottomBar extends StatefulWidget {
  const DropshipperBottomBar({Key? key}) : super(key: key);

  @override
  State<DropshipperBottomBar> createState() => _DropshipperBottomBarState();
}

class _DropshipperBottomBarState extends State<DropshipperBottomBar> {
  List<Widget> tabItems = [
    HomePage(),
    Categories(),
    YourOrders(),
    Profile(),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
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
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                  backgroundColor: lightColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label: "Category",
                  backgroundColor: lightColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info),
                  label: "Order",
                  backgroundColor: lightColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                  backgroundColor: lightColor),
            ],
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            selectedItemColor: Colors.black,
            iconSize: 30,
            onTap: changePage,
            elevation: 10),
      ),
    );
  }
}
