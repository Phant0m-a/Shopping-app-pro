// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import '../../../constants/styles.dart';
import '../../../routes/routes.dart';
import '../../../widgets/iconandTextMixed.dart';

class Products extends StatelessWidget {
  Products({Key? key}) : super(key: key);
  Color TextColorOfProductPage = Colors.deepOrange.shade600.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                  items: [
                    Image.asset('assets/images/abdul.png'),
                    Image.asset('assets/images/abdul.png'),
                    Image.asset('assets/images/abdul.png')
                  ],
                  options: CarouselOptions(
                      height: 300,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1))),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product on sale',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InlineTextandIcon(
                            FirstText: 'Rs. ',
                            SecondText: '8150',
                            SecondTextStyle: TextStyle(
                                color: TextColorOfProductPage,
                                fontWeight: FontWeight.bold),
                            FirstTextStyle:
                                TextStyle(color: TextColorOfProductPage),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.share_outlined,
                                color: TextColorOfProductPage,
                                size: 25,
                              ))
                        ]),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.pink.shade50,
                              borderRadius: BorderRadius.circular(15)),
                          padding:
                              EdgeInsets.symmetric(horizontal: 7, vertical: 5),
                          child: InlineTextandIcon(
                            FirstText: ' Free Delivery',
                            FirstTextStyle: TextStyle(
                                fontSize: 10, color: Colors.grey.shade500),
                            isIcon: true,
                            IconName: Icons.fire_truck_outlined,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InlineTextandIcon(
                          FirstText: '100 ',
                          FirstTextStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                          SecondText: 'Items Sold',
                          SecondTextStyle: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5,
                                spreadRadius: 1.5,
                                blurStyle: BlurStyle.outer)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product Info',
                                style: TextStyle(
                                    color: TextColorOfProductPage,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16),
                              ),
                              Row(
                                children: [
                                  InlineTextandIcon(
                                    isIcon: true,
                                    IconName: Icons.copy_outlined,
                                    iconSize: 23,
                                    iconColor: Colors.grey,
                                    FirstText: ' Copy',
                                    FirstTextStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Abdul was a very honest thats why we are selling him,if any one interested, than contact',
                            style: TextStyle(fontSize: 13, height: 1.5),
                          ),
                          Divider(
                            height: 25,
                            thickness: 1,
                            color: Colors.grey.shade500,
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                                color: TextColorOfProductPage,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(
                            'Product Type: Human \nBrand Name: Abdul Hameed\nMaterial Name: Flesh',
                            style: TextStyle(fontSize: 13, height: 1.5),
                          ),
                          Divider(
                            height: 25,
                            thickness: 1,
                            color: Colors.grey.shade500,
                          ),
                          InlineTextandIcon(
                            FirstText: 'Product Code: ',
                            SecondText: 'BCSF19BM009',
                            FirstTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                            SecondTextStyle: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.normal),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              InlineTextandIcon(
                                FirstText: ' Download Images',
                                FirstTextStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: TextColorOfProductPage),
                                isIcon: true,
                                iconColor: TextColorOfProductPage,
                                iconSize: 23,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              InlineTextandIcon(
                                buttonTap: () {
                                   Get.toNamed(MyRoutes.getShopScreen());
                                },
                                FirstText: ' Visit Shop',
                                FirstTextStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                                IconName: Icons.storefront_outlined,
                                iconSize: 23,
                                iconColor: TextColorOfProductPage,
                                isIcon: true,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(

                              onPressed: () {
                                Get.toNamed(MyRoutes.getOrder());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  'Order Now',
                                  style: MyTextStyles.headingSmallWhite,
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

