import 'package:flutter/material.dart';

import '../../../constants/images.dart';
import '../../../constants/styles.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: const Text('Category subitem name')),
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
                        style: MyTextStyles.headingSmallWhite),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 800,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 300,
                    crossAxisCount: 2,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 10),
                itemCount: 20,
                itemBuilder: ((context, index) => GridTile(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          // height: 400,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.amberAccent,
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              // height: 400,
                              width: 50,
                              fit: BoxFit.cover,
                              abdul,
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
