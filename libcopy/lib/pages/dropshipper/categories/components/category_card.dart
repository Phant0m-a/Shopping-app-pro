import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({Key? key, required this.onTap, required this.borderColor}) : super(key: key);

  final void Function() onTap;

  final Color borderColor ;
  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: EdgeInsets.all(26),
          decoration: BoxDecoration(
            border: Border.all(color: widget.borderColor, width: 2),
          ),
          child:Icon(Icons.man),
      ),
     );
  }
}
