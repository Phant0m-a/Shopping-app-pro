// ignore_for_file: prefer_const_constructors

import 'package:dropshipper/constants/colors.dart';
import 'package:dropshipper/routes/routes.dart';
import 'package:flutter/material.dart';

import '../../../../constants/images.dart';
import '../../../../constants/styles.dart';
import 'package:get/get.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          //shopname
          'Ottoman Empire',
          style: TextStyle(color: primary),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: (() => Navigator.of(context).pop()),
            icon: Icon(
              Icons.arrow_back,
              color: primary,
            )),
            actions: [
               Container(
                      padding: const EdgeInsets.only(right: 15, 
                      // bottom: 3
                      ),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: secondary,
                        size: 25,
                      ),
                    ),
            ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  abdul,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black38,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //user name
                        Text('M AHSAN ALI',
                            style: MyTextStyles.headingLargeWhite),
                       SizedBox(height: 25),

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [






                          //start
                           Row(
                              children: [
                                //sec 1
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.star,color: Colors.yellow,
                                    ),
                                       SizedBox(height: 5),
                                   
                                      Text(
                                      '586',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                 SizedBox(width: 5),
                                 //sec 2
                                Column(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                   Text(
                                      //product amount
                                      '4.44',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                   SizedBox(height: 5),
                                    Text(
                                      'Ratings',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15),
                                    ),

                                  ],
                                )
                               
                              ],
                            ),
                            

                              //products
                            Column(
                              children: [
                              
                                Row(
                                  children: [
                                    Text(
                                      //product amount
                                      '468',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Products',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 600,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 300,
                    crossAxisCount: 2,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 10),
                itemCount: 20,
                itemBuilder: ((context, index) => GridTile(
                      child: GestureDetector(
                        onTap: (){
                          Get.toNamed(MyRoutes.getProducts());
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                abdul,
                                fit: BoxFit.fill,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Abdul Hameed Khan'),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Rs. 8500',
                                          style: TextStyle(
                                            color: Colors.red[400],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.share_rounded,
                                          color: Colors.redAccent,
                                          size: 26,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 4),
                                          decoration: BoxDecoration(
                                              color: Colors.pink.shade200
                                                  .withOpacity(0.3),
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Text(
                                            'Free Delivery',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 12),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 7,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.baseline,
                                          textBaseline: TextBaseline.alphabetic,
                                          children: [
                                            Text(
                                              '100',
                                              style: TextStyle(
                                                  color: Colors.red[200],
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16),
                                            )
                                            // ,SizedBox(width: 2,),
                                            ,
                                            Text(
                                              'item',
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
