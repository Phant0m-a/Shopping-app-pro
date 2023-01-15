
import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  const myTextField({
    Key? key,
    required this.hintText,
    required this.textController,
  }) : super(key: key);

  final String hintText;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            filled: true,
            fillColor: Colors.white,
            hintText:hintText),
      ),
    );
  }
}
