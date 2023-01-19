import 'package:flutter/material.dart';

import '../../../constants/images.dart';
import '../components/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 800,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // maxCrossAxisExtent:200,
          //childAspectRatio: 1.3 / 2,
          mainAxisExtent: 300,
          crossAxisCount: 2,
          // crossAxisSpacing: 10,
          crossAxisSpacing: 13,
          // mainAxisSpacing: 5,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: ((context, index) => GridTile(
              child: InkWell(
                onTap: () {},
                child: Container(
                  // height: 400,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.pink.shade100),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1.5,
                          blurStyle: BlurStyle.outer)
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    // child: Image.asset(
                    //   // height: 400,
                    //   width: 50,
                    //   fit: BoxFit.cover,
                    //   abdul,
                    // ),
                    child: ProductCard(
                      isDevliveryFree: true,
                      name: 'Abdul Hameed Khan',
                      price: 16500,
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
