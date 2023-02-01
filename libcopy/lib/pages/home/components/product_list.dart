// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants/images.dart';
import '../../../model/product/product.dart';
import '../components/product_card.dart';

class ProductList extends StatelessWidget {
  late Product product;
  List productList = Product.ProductList;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      // height: productList.length.toInt() * 200,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics()
        // const BouncingScrollPhysics()
        ,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          // maxCrossAxisExtent:200,

          childAspectRatio: 4 / 2,
          mainAxisExtent: 300,
          crossAxisCount: 2,
          // crossAxisSpacing: 13,
          crossAxisSpacing: 13,
          // mainAxisSpacing: 10,
          mainAxisSpacing: 13,
        ),
        itemCount: productList.length,
        itemBuilder: ((context, index) => GridTile(
              child: InkWell(
                onTap: () {},
                child: Container(
                  //*height: 400,
                  // width: 50,
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
                  child: ProductCard(
                    cardItem: productList[index],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
