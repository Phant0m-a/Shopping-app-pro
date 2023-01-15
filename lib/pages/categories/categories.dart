import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import '../../model/category/sub_category.dart';
import 'components/category_card.dart';
import 'components/sub_category_card.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final random = math.Random();
  final scrollDirection = Axis.vertical;

  late AutoScrollController controller;
  late List<List<int>> randomList;
  Color borderColor = Colors.red;
  Color noBorder = Colors.transparent;
  int counter = -1;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height - 150,

          child: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: ListView(
                shrinkWrap: true,
                scrollDirection: scrollDirection,
                controller: controller,
                children: [
                  subCat(
                    0,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    1,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    2,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    3,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    4,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    5,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    6,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    7,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    8,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                  subCat(
                    9,
                    List.generate(
                      subCatItemList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: SubCatCard(
                          cardItem: subCatItemList[index],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(
          width: 80,
          height: MediaQuery.of(context).size.height - 150,
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return CategoryCard(
                  onTap: () async {
                    setState(() {
                      counter = index;
                    });
                    return _scrollToCounter();
                  },
                  borderColor: counter == index ? borderColor : noBorder,
                );
              }),
        ),
      ],
    );
  }

  Future _scrollToCounter() async {
    await controller.scrollToIndex(counter,
        preferPosition: AutoScrollPosition.begin);
    controller.highlight(counter);
  }

  Widget subCat(int index, List<Widget> subCatList) {
    return _wrapScrollTag(
      index: index,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: GridView.count(
          childAspectRatio: 1/1.4,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 3,
          children: subCatList,
        ),
      ),
    );
  }

  Widget _wrapScrollTag({required int index, required Widget child}) =>
      AutoScrollTag(
        key: ValueKey(index),
        controller: controller,
        index: index,
        child: child,
        highlightColor: Colors.black.withOpacity(0.1),
      );
}
