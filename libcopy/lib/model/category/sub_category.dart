import 'package:flutter/material.dart';

import '../../constants/images.dart';
import '../../routes/routes.dart';

class SubCatItem {
  const SubCatItem(
      {required this.title,
        required this.image,
        required this.navigator});
  final String title;
  final String image;
  final String navigator;
}

List<SubCatItem> subCatItemList1 = [
  SubCatItem(
      title: 'Sultan Abdul Hameed Khan',
      image: abdul,
      navigator: MyRoutes.getCategoryScreen()),
  SubCatItem(
      title: 'Sultan Abdul Hameed Khan',
      image: abdul,
      navigator: ''),
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
];

List<SubCatItem> subCatItemList2 = [
  SubCatItem(
      title: 'Sultan Abdul Hameed Khan',
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
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
  SubCatItem(
      title: 'Abdul',
      image: abdul,
      navigator: ''),
];
