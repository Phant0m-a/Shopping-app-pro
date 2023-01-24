import 'package:flutter/material.dart';

import '../../../constants/images.dart';
import '../../../constants/styles.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Category subitem name')),
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
                    child: Text('Category Item Name',
                        style: MyTextStyles.headingLargeWhite),
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
                                            color: Colors.pink.shade200.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(12)),
                                        child: Text(
                                          'Free Delivery',
                                          style: TextStyle(
                                              color: Colors.black54, fontSize: 12),
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
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
