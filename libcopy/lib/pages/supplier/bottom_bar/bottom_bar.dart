// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dropshipper/payments/payments.dart';
import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';

class SupplierBottomBar extends StatefulWidget {
  const SupplierBottomBar({Key? key}) : super(key: key);

  @override
  State<SupplierBottomBar> createState() => _SupplierBottomBarState();
}

class _SupplierBottomBarState extends State<SupplierBottomBar> {
  List<Widget> tabItems = [
    Text("Home"),
    Text("Profile"),
    Payments(),
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
                  icon: Icon(Icons.person),
                  label: "Profile",
                  backgroundColor: lightColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.payment),
                  label: "Payments",
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
