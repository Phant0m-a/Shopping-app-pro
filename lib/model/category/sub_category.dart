import 'package:flutter/material.dart';

import '../../constants/images.dart';

class SubCatItem {
  const SubCatItem(
      {required this.title,
        required this.image,
        required this.navigator});
  final String title;
  final String image;
  final String navigator;
}

List<SubCatItem> subCatItemList = [
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
];
