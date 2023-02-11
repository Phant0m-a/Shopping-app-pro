import 'package:dropshipper/constants/colors.dart';
import 'package:dropshipper/constants/images.dart';
import 'package:flutter/material.dart';

class SharedItem extends StatelessWidget {
  const SharedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //navbar
        Container(
          // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /**container 1 */
              Container(
                child: Row(
                  children: [
                    //profile pic
                    // CircleAvatar(
                    //   backgroundColor: Colors.grey[400],
                    //   radius: 20,
                    //   child: Icon(
                    //     Icons.person,
                    //     color: Colors.grey[100],
                    //     size: 35,
                    //   ),
                    // ),
                    SizedBox(
                      width: 7,
                    ),
                    //profile name
                    Text(
                      'DropShipper',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
              //**container 2 shopping cart */
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // padding: const EdgeInsets.only(right: 10, bottom: 3),
                      child: const Icon(
                        Icons.notifications_active_outlined,
                        color: secondary,
                        size: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      // padding: const EdgeInsets.only(right: 10, bottom: 3),
                      child: const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.red,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        //date and see all
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('2023-01-16',
                style: TextStyle(
                    color: secondary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
            Text('See all',
                style: TextStyle(
                    color: Colors.green.shade400,
                    fontSize: 13,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 15),
        //catelog card
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          width: 130,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 5,
                spreadRadius: 1.5,
                blurStyle: BlurStyle.outer)
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //catalog image
              Container(
                height: 120,
                width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1.5,
                        blurStyle: BlurStyle.outer),
                  ],
                  image: DecorationImage(
                    image: AssetImage(abdul),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // rest of text
              SizedBox(height: 10),
              //title
              Text(
                'Abdul Hameed Khan',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: secondary),
              ),
              SizedBox(height: 5),
              //price
              Text(
                'Rs. 18500',
                style: TextStyle(
                    color: primary, fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.share_outlined,
                      color: secondary,
                      size: 25,
                    )),
              )
            ],
          ),
        )
      ]),
    ))));
  }
}
