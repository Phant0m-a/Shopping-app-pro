// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropshipper/constants/colors.dart';
import 'package:dropshipper/pages/home/components/category_avatar.dart';
import 'package:dropshipper/pages/home/components/my_carousal_slider.dart';
import 'package:dropshipper/pages/home/components/product_list.dart';
import 'package:flutter/material.dart';
import 'components/my_app_bar.dart';
import 'components/my_text_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
        //** appbar
        // appBar: AppBar(
        //   title: MYAppBar(
        //     username: 'Abdul Hameed',
        //   ),
        // ),
        //**** ignore appbar */
        // appBar:
        //  AppBar(
        //   title: const Text(
        //     'Ahsan Ali',
        //     style: TextStyle(color: Colors.black, fontSize: 15),
        //   ),
        //   elevation: 0,
        //   backgroundColor: Colors.white,
        //   leading: Container(
        //     padding: const EdgeInsets.only(left: 10, top: 0, right: 5, bottom: 0),
        //     child: CircleAvatar(
        //       backgroundColor: Colors.grey[400],
        //       radius: 20,
        //       child: Icon(
        //         Icons.person,
        //         color: Colors.grey[100],
        //         size: 35,
        //       ),
        //     ),
        //   ),
        //   //actions
        //   actions: [
        //     Container(
        //       padding: const EdgeInsets.only(right: 10, bottom: 3),
        //       child: const Icon(
        //         Icons.shopping_cart_rounded,
        //         color: Colors.red,
        //         size: 25,
        //       ),
        //     )
        //   ],
        // ),

        //body
        SizedBox(
      height: MediaQuery.of(context).size.height - 100,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyAppBar(username: 'Ahsan Ali'),
              //search field
              myTextField(
                hintText: 'Search',
                textController: searchController,
              ),
              SizedBox(
                height: 5,
              ),
              //***carousal
              // MyCarousalSlider(), *old doesnt work*
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 29, 29, 29),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4)),
                child: CarouselSlider(
                    items: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        width: double.infinity,
                        child: Image(
                          image: AssetImage(
                            'assets/images/abdul.png',
                          ),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 180.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      viewportFraction: 0.8,
                    )),
              ),
              SizedBox(
                height: 15,
              ),
              //***Category Avatars list horizontal
              Container(
                padding: const EdgeInsets.only(
                    left: 15, top: 20, right: 5, bottom: 0),
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
                        Text('Categories', style: TextStyle(fontSize: 12)),
                      ],
                    ),
                    CategoryAvatar(catName: 'Kids', catIcon: Icons.image),
                    CategoryAvatar(catName: 'Men', catIcon: Icons.image),
                    CategoryAvatar(catName: 'Women', catIcon: Icons.image)
                  ],
                ),
              ),
              SizedBox(height: 15),
              Divider(thickness: 0.5, color: Colors.grey),
              //***Products for you
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
              //***Grid!
              ProductList()
            ],
          ),
        ),
      ),
    );
  }
}
